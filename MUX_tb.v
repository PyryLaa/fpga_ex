`timescale 1ns / 1ps

module MUX_tb();
reg [3:0] inputs;
reg [5:4] select;
wire led0;

MUX dut(
    .select(select),
    .inputs(inputs),
    .led0(led0)
);

initial begin
    inputs = 4'b0000;
    select[5:4] = 2'b00; //First switch
    inputs[0] = 1;
    #10 inputs[0] = 0;
    
    #10 select[5:4] = 2'b01; //Second switch
    inputs[1] = 1;
    #10 inputs[1] = 0;
    
    #10 select[5:4] = 2'b10; //Third switch
    inputs[2] = 1;
    #10 inputs[2] = 0;
    
    #10 select[5:4] = 2'b11; //Fourth switch
    inputs[3] = 1;
    #10 inputs[3] = 0;
    
    #10 $finish;
end
    
endmodule
