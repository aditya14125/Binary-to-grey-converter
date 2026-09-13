#!/usr/bin/env bash

set -e

DESIGN="designs/binary_to_gray"
RUN="runs/binary_to_gray/simulation"

mkdir -p "$RUN"

echo "=============================================="
echo " Binary to Gray - Simulation"
echo "=============================================="

echo "[1/2] Compiling..."

iverilog -g2012 \
    -o "$RUN/binary_to_gray_sim" \
    "$DESIGN/rtl/design.sv" \
    "$DESIGN/tb/design_tb.sv"

echo "[2/2] Running simulation..."

vvp "$RUN/binary_to_gray_sim" 2>&1 | tee "$RUN/simulation.log"

echo ""
echo "Simulation complete."
echo "VCD: waveform.vcd"
echo "Log: $RUN/simulation.log"
