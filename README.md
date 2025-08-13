# Day 12: FIFO (First-In First-Out) Memory Design and Verification

## Objective
Design and verify an 8-depth, 8-bit wide FIFO memory in Verilog to store and retrieve data in the order it was received.

## Tools
- Icarus Verilog (Simulation)
- GTKWave (Waveform Analysis)

## Files
- `src/fifo.v` - RTL Design
- `src/fifo_tb.v` - Testbench
- `run.sh` - Compilation and Simulation script
- `fifo.vcd` - Waveform dump file

## Simulation Steps
1. Compile the Verilog files using Icarus Verilog.
2. Run the simulation to generate `fifo.vcd`.
3. Open the waveform in GTKWave to analyze behavior.

## Expected Behavior
- **Write Operation**: Data is pushed into the FIFO sequentially.
- **Read Operation**: Data is retrieved in the same order it was written (First-In First-Out).
- **Empty Signal**: High when FIFO is empty.
- **Full Signal**: High when FIFO is full.
- **Pointer Movement**: Write and read pointers update accordingly.

## Output
Waveform shows:
- Writing data `11, 22, 33, 44` into FIFO.
- Reading back the same data in order.
- `empty` and `full` signals toggling appropriately.
- Pointer values incrementing and wrapping correctly.

![FIFO Waveform](screenshot.png)
