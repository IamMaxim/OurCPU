module InstructionPutb;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionPutb");

            ram.popWordFromStack(A);

            $display("First number: %d", A);

            ram.putWordIntoStack(A[15:8]);
        end : block_1
    endtask

endmodule
