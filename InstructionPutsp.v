module InstructionPutsp;
    task execute;
        begin : block_1

        if (cpu.debugExecution)   
            $display("Executing InstructionPutsp");

        if (cpu.debug) begin
            $display("Stack pointer: %d; in bytes: %d", cpu.ram.stackPointer, cpu.ram.stackPointer / 8);
        end
        ram.putWordIntoStack(cpu.ram.stackPointer / 8);
        
        end : block_1
    endtask

endmodule





