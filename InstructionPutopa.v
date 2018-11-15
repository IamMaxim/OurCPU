module InstructionPutopa;
    task execute;
        begin : block_1

        if (cpu.debugExecution)   
            $display("Executing InstructionPutopa > %d", cpu.current_op_pointer / 32);

        cpu.ram.putWordIntoStack(cpu.current_op_pointer / 32);
        
        end : block_1
    endtask

endmodule





