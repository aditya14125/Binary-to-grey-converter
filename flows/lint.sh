#!/usr/bin/env bash

set -e

DESIGN="designs/binary_to_gray"
RUN="runs/binary_to_gray/lint"

mkdir -p "$RUN"

echo "=============================================="
echo " Binary to Gray - Verilator Lint"
echo "=============================================="

verilator --lint-only -Wall -Wno-fatal \
    "$DESIGN/rtl/design.sv" \
    2>&1 | tee "$RUN/verilator.log"

echo ""
echo "Lint complete."
echo "Log: $RUN/verilator.log"
