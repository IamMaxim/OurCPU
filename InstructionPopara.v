module InstructionPopara;
    task execute();
        begin : block_1
            
        if (cpu.debugExecution)                              
            $display("Executing InstructionPopara");
        
        cpu.ram.popWordFromStack(cpu.ar_pointer);
        cpu.ar_pointer = cpu.ar_pointer * 8;

        if (cpu.debug) begin
            $display("PoppedARA %d; in bytes: %d", cpu.ar_pointer, cpu.ar_pointer / 8);
        end
        
        end : block_1
    endtask

endmodule
