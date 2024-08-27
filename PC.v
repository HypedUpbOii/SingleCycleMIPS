module ProgramCounter(
    input wire clk,
    input wire [31:0] newPC,
    output wire [31:0] currPC
);

    always @(posedge clk) begin
        currPC <= newPC;
    end

endmodule