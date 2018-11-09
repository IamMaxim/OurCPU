module InstructionAnd;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            $display("Executing InstructionAnd");

            ram.popWordFromStack(B);
            ram.popWordFromStack(A);

            $display("First number: %d", A);
            $display("Second number: %d", B);

            ram.putWordIntoStack(A & B);
        end : block_1
    endtask

endmodule