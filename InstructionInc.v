module InstructionInc;
    task execute;
        begin : block_1
            reg [15:0] A;

            if (cpu.debugExecution)
                $display("Executing InstructionInc");
            cpu.ram.popWordFromStack(A);

            if (cpu.debug) begin
                $display("First number: %d", A);
            end

            cpu.ram.putWordIntoStack(A + 1);
        end : block_1
    endtask

endmodule