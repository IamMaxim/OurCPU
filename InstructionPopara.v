module InstructionPopara;
    task execute();
        begin : block_1
            $display("Executing InstructionPopara");
        
            cpu.ram.popWordFromStack(cpu.ar_pointer);
            cpu.ar_pointer = cpu.ar_pointer * 8;

            $display("PoppedARA %d; in bytes: %d", cpu.ar_pointer, cpu.ar_pointer / 8);
        end : block_1
    endtask

endmodule
