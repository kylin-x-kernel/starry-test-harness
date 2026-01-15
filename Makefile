# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
# Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
# See LICENSE for license details.
#
# This file has been modified by KylinSoft on 2025.
#
# Driver for the Arm Generic Interrupt Controller version 3 (or 4).

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
