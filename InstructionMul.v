module InstructionMul;

    input  [15:0] A, B;
    output [15:0] mul;
    reg [15:0]    mul;
    always @(A or B) begin
        mul = A * B;
    end
endmodule
