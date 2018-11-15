module InstructionAnd;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            if (cpu.debugExecution)
                $display("Executing InstructionAnd");

            cpu.ram.popWordFromStack(B);
            cpu.ram.popWordFromStack(A);

            if (cpu.debug) begin
                $display("First number: %d", A);
                $display("Second number: %d", B);
            end

            cpu.ram.putWordIntoStack(A & B);
        end : block_1
    endtask

endmodule