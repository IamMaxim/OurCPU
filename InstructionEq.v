module InstructionEq;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            $display("Executing InstructionEq");

            cpu.ram.popWordFromStack(B);
            cpu.ram.popWordFromStack(A);

            $display("First number: %d", A);
            $display("Second number: %d", B);

            cpu.ram.putWordIntoStack(A == B ? 1'b1 : 1'b0);
        end : block_1
    endtask

endmodule
