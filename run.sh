#!/bin/bash
iverilog -o fifo_tb src/fifo.v src/fifo_tb.v
vvp fifo_tb
gtkwave fifo.vcd &
