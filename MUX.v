`timescale 1ns / 1ps

module MUX(
    input [3:0] inputs,
    input [5:4] select,
    output wire led0
    );
    assign led0 = (select == 2'b00) ? inputs[0]:
                    (select == 2'b01) ? inputs[1]:
                    (select == 2'b10) ? inputs[2]:
                    (select == 2'b11) ? inputs[3]: 1'b0;
endmodule
