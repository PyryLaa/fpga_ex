`timescale 1ns / 1ps

module DEMUX(
    input wire in_sw,
    input wire [2:1]select,
    output wire [3:0]led
    );
    assign led[0] = in_sw && (select == 2'b00);
    assign led[1] = in_sw && (select == 2'b01);
    assign led[2] = in_sw && (select == 2'b10);
    assign led[3] = in_sw && (select == 2'b11);
endmodule
