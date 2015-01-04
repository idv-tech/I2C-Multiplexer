`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: www.idv-tech.com 
// Engineer: Dmitriy Ivashin
// 
// Create Date: 12/31/2014 11:05:48 PM
// Design Name: 
// Module Name: iic_multiplexer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revisions:
// Revision 1.2
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module iic_multiplexer #
    (
        parameter integer MUX_WIDTH = 2
    ) 
    (  
        input  wire upstream_scl_T,
        input  wire upstream_scl_I,
        output wire upstream_scl_O,
        input  wire upstream_sda_T,
        input  wire upstream_sda_I,
        output wire upstream_sda_O,
        
        output wire [MUX_WIDTH - 1:0] downstream_scl_T,
        input  wire [MUX_WIDTH - 1:0] downstream_scl_I,
        output wire [MUX_WIDTH - 1:0] downstream_scl_O,
        output wire [MUX_WIDTH - 1:0] downstream_sda_T,
        input  wire [MUX_WIDTH - 1:0] downstream_sda_I,
        output wire [MUX_WIDTH - 1:0] downstream_sda_O
    );
    
    assign upstream_scl_O = &downstream_scl_I;
    assign upstream_sda_O = &downstream_sda_I;
    //assign upstream_scl_O = (&downstream_scl_I == 1'b1) ? 1 : 0;
    //assign upstream_sda_O = (&downstream_sda_I == 1'b1) ? 1 : 0;
    
    genvar k;
    generate
        for (k = 0; k <= MUX_WIDTH - 1; k = k + 1) begin: GEN
            assign downstream_scl_O[k] = upstream_scl_I;
            assign downstream_sda_O[k] = upstream_sda_I;
            assign downstream_scl_T[k] = upstream_scl_T;
            assign downstream_sda_T[k] = upstream_sda_T;        
        end
    endgenerate
        
endmodule
