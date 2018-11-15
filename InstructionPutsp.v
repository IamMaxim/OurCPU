module InstructionPutsp;
    task execute;
        begin : block_1
            $display("Executing InstructionPutsp");

            $display("Stack pointer: %d; in bytes: %d", cpu.ram.stackPointer, cpu.ram.stackPointer / 8);

            ram.putWordIntoStack(cpu.ram.stackPointer / 8);
        end : block_1
    endtask

endmodule





