`timescale 1ns/1ps
module fifo_tb;

reg clk, reset, wr_en, rd_en;
reg [7:0] data_in;
wire [7:0] data_out;
wire full, empty;

fifo uut (
    .clk(clk),
    .reset(reset),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

initial begin
    $dumpfile("fifo.vcd");
    $dumpvars(0, fifo_tb);

    clk = 0;
    reset = 1; wr_en = 0; rd_en = 0; data_in = 0;
    #10 reset = 0;

    // Write data
    repeat(4) begin
        #10 wr_en = 1; data_in = data_in + 8'h11;
    end
    #10 wr_en = 0;

    // Read data
    #20 rd_en = 1;
    repeat(4) #10;
    rd_en = 0;

    #20 $finish;
end

always #5 clk = ~clk;

endmodule
