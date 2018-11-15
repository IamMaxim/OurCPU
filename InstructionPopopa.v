module InstructionPopopa;
    task execute();
        begin : block_1

        if (cpu.debugExecution)   
            $display("Executing InstructionPopopa");
        
        cpu.ram.popWordFromStack(cpu.current_op_pointer);
        cpu.current_op_pointer = cpu.current_op_pointer * 32;
        
        if (cpu.debug) begin
            $display("PoppedOPA %d; in bytes: %d", cpu.current_op_pointer, cpu.current_op_pointer / 32);
        end
        end : block_1
    endtask

endmodule
