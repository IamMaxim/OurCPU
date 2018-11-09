module InstructionLe;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            $display("Executing InstructionLe");

            ram.popWordFromStack(B);
            ram.popWordFromStack(A);

            $display("First number: %d", A);
            $display("Second number: %d", B);

            ram.putWordIntoStack(A < B ? 1'b1 : 1'b0);
        end : block_1
    endtask

endmodule