module ALU (
    input wire clk,
    input wire [3:0] ALUOp,
    input wire [31:0] Reg1Val,
    input wire [31:0] ALUInput2,
    output reg [31:0] ALUOut,
    output wire zero
);

    always @(posedge clk) begin
        case(ALUOp)
            4'b0000: ALUOut <= Reg1Val & ALUInput2;
            4'b0001: ALUOut <= Reg1Val | ALUInput2;
            4'b0010: ALUOut <= Reg1Val + ALUInput2;
            4'b0011: ALUOut <= Reg1Val - ALUInput2;
            default: ALUOut <= 32'b0;
        endcase
    end
    assign zero = (ALUOut == 0) ? 1'b1 : 1'b0;
    
endmodule