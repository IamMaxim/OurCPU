module InstructionPop;
    task execute(input reg[15:0] arg);
        begin : block_1

        if (cpu.debugExecution)   
            $display("Executing InstructionPop");

        cpu.ram.stackPointer = cpu.ram.stackPointer - arg * 8;

        if (cpu.debug) begin
            $display("Moved stack pointer back by %d; in bytes: %d", arg * 8, arg);
        end
        end : block_1
    endtask

endmodule
