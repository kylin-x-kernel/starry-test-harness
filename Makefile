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
	@echo "Board testing targets:"
	@echo "  make board-test-qemu    # run QEMU board tests"
	@echo "  make board-test-crosvm  # run crosvm board tests (N90)"
	@echo "  make n90-security-test  # run N90 security application tests"

# Board test targets
.PHONY: board-test-qemu board-test-crosvm n90-security-test

board-test-qemu:
	@echo "Running QEMU board tests..."
	./scripts/run_board_tests.sh \
		--board qemu_virt \
		--hypervisor qemu \
		--rootfs $(ROOTFS_IMAGE)

board-test-crosvm:
	@echo "Running crosvm board tests for N90..."
	./scripts/run_board_tests.sh \
		--board n90-crosvm \
		--hypervisor crosvm \
		--rootfs $(ROOTFS_IMAGE)

n90-security-test:
	@echo "Running N90 security application tests..."
	./scripts/starry_crosvm_runner.py \
		--root $(STARRY_ROOT) \
		--rootfs $(ROOTFS_IMAGE) \
		--arch aarch64 \
		--cpus 4 \
		--memory 4G \
		--net \
		--command "/opt/security-apps/security-test-suite.sh"
