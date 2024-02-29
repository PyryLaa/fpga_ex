`timescale 1ns / 1ps

module DEMUX_tb();
reg in_sw;
reg [2:1]select;
wire [3:0]led;

DEMUX dut(
    .in_sw(in_sw),
    .select(select),
    .led(led)
);

initial begin
    in_sw = 0;
    select = 2'b00; //First led
    #10 in_sw = 1;
    #10 in_sw = 0;
    
    select = 2'b01; //Second led
    #10 in_sw = 1;
    #10 in_sw = 0;
    
    select = 2'b10; //Third led
    #10 in_sw = 1;
    #10 in_sw = 0;
    
    select = 2'b11; //Fourth led
    #10 in_sw = 1;
    #10 in_sw = 0;
    
    #10 $finish;

end
endmodule
