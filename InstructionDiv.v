module InstructionDiv;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            if (cpu.debugExecution)
                $display("Executing InstructionDiv");

            cpu.ram.popWordFromStack(B);
            cpu.ram.popWordFromStack(A);

            if (cpu.debug) begin
                $display("First number: %d", A);
                $display("Second number: %d", B);
                $display("Result: %d", A / B);
            end

            cpu.ram.putWordIntoStack(A / B);
        end : block_1
    endtask

endmodule