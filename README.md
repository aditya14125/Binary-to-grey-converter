# Binary to Gray Code Converter

This project implements a 4-bit Binary to Gray Code Converter using SystemVerilog.

## Design Flow

Problem  
↓  
Algorithm  
↓  
RTL Design  
↓  
Simulation  
↓  
Linting  
↓  
Synthesis

## RTL Logic

The Binary-to-Gray conversion is implemented using:

```text
Gray = Binary XOR (Binary >> 1)
For a 4-bit input:

G[3] = B[3]
G[2] = B[3] XOR B[2]
G[1] = B[2] XOR B[1]
G[0] = B[1] XOR B[0]

Files : 
rtl/design.sv - SystemVerilog RTL design
tb/design_tb.sv - Testbench
flows/sim.sh - Simulation script
flows/lint.sh - Lint script
flows/synth.ys - Yosys synthesis script
waveform.vcd - Simulation waveform
netlist.v - Synthesized netlist
Tools Used
SystemVerilog
Icarus Verilog
Verilator
Yosys
GTKWave
Result

The Binary-to-Gray converter was successfully simulated, linted, and synthesized.
