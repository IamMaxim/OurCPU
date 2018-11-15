module InstructionPopopa;
    task execute();
        begin : block_1
            $display("Executing InstructionPopopa");
        
            cpu.ram.popWordFromStack(cpu.current_op_pointer);
            cpu.current_op_pointer = cpu.current_op_pointer * 32;

            $display("PoppedOPA %d; in bytes: %d", cpu.current_op_pointer, cpu.current_op_pointer / 32);
        end : block_1
    endtask

endmodule
