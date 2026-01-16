CARGO ?= cargo
RUNNER := $(CARGO) run --quiet --bin starry-test-harness --
SUPPORTED_SUITES := ci-test ci-test-iter stress-test daily-test

SUITE := $(firstword $(MAKECMDGOALS))
ACTION := $(word 2,$(MAKECMDGOALS))
ifeq ($(ACTION),)
ACTION := run
endif

.DEFAULT_GOAL := help

.PHONY: $(SUPPORTED_SUITES) run help build

$(SUPPORTED_SUITES):
	@$(RUNNER) $(SUITE) $(ACTION)

run:
	@# helper targets so `make ci-test run` works as expected

build:
	@$(CARGO) build

help:
	@echo "Available targets:"
	@echo "  make ci-test run        # build + run CI smoke tests"
	@echo "  make ci-test-iter run   # dev iteration tests (per-case harness)"
	@echo "  make stress-test run    # build + run stress tests"
	@echo "  make daily-test run     # run long stability tests"
	@echo "  make build              # compile the Rust harness"
	@echo ""
	@echo "Yocto ptest targets:"
	@echo "  make install-ptest      # install tests for Yocto ptest"
	@echo "  make test-ptest-install # test ptest installation locally"

# ==================== Yocto ptest 支持 ====================
ARCH ?= aarch64
TARGET ?= $(ARCH)-unknown-linux-musl
PTEST_DESTDIR ?= /tmp/ptest-install

# 安装所有测试到 ptest 目录
.PHONY: install-ptest
install-ptest: install-ptest-ci install-ptest-stress install-ptest-daily
	@echo "Installing ptest runner script..."
	install -m 0755 scripts/run-ptest $(PTEST_DESTDIR)/run-ptest
	@echo "ptest installation complete: $(PTEST_DESTDIR)"

# 安装 CI 测试
.PHONY: install-ptest-ci
install-ptest-ci:
	@echo "Building and installing CI tests..."
	install -d $(PTEST_DESTDIR)/ci
	cd tests/ci/cases && \
	cargo build --release --tests --target $(TARGET) && \
	for test in $$(find target/$(TARGET)/release/deps -type f -executable -name '*-*' ! -name '*.so'); do \
		test_name=$$(basename $$test | sed 's/-[a-f0-9]*$$//'); \
		install -m 0755 $$test $(PTEST_DESTDIR)/ci/$$test_name; \
	done

# 安装压力测试
.PHONY: install-ptest-stress
install-ptest-stress:
	@echo "Building and installing stress tests..."
	install -d $(PTEST_DESTDIR)/stress
	for case_dir in tests/stress/cases/*; do \
		[ -d "$$case_dir" ] || continue; \
		case_name=$$(basename $$case_dir); \
		echo "  Building $$case_name..."; \
		cd $$case_dir && \
		cargo build --release --target $(TARGET) && \
		if [ -f target/$(TARGET)/release/$$case_name ]; then \
			install -m 0755 target/$(TARGET)/release/$$case_name \
				$(PTEST_DESTDIR)/stress/$$case_name; \
		fi; \
		cd -; \
	done

# 安装日常测试
.PHONY: install-ptest-daily
install-ptest-daily:
	@echo "Installing daily tests..."
	install -d $(PTEST_DESTDIR)/daily
	# 复制 shell 脚本
	find tests/daily/cases -name '*.sh' -type f \
		-exec install -m 0755 {} $(PTEST_DESTDIR)/daily/ \;
	# 如果有二进制，也编译安装
	for case_dir in tests/daily/cases/*; do \
		[ -d "$$case_dir" -a -f "$$case_dir/Cargo.toml" ] || continue; \
		case_name=$$(basename $$case_dir); \
		cd $$case_dir && \
		cargo build --release --target $(TARGET) && \
		if [ -f target/$(TARGET)/release/$$case_name ]; then \
			install -m 0755 target/$(TARGET)/release/$$case_name \
				$(PTEST_DESTDIR)/daily/$$case_name; \
		fi; \
		cd -; \
	done

# 测试 ptest 安装
.PHONY: test-ptest-install
test-ptest-install:
	rm -rf /tmp/ptest-test
	$(MAKE) install-ptest PTEST_DESTDIR=/tmp/ptest-test
	ls -lR /tmp/ptest-test
