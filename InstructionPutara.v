module InstructionPutara;
    task execute();
        begin : block_1

        if (cpu.debugExecution)   
            $display("Executing InstructionPutara > %d", cpu.ar_pointer / 8);

        if (cpu.debug) begin
            $display("AR address: %d; in bytes: %d", cpu.ar_pointer, cpu.ar_pointer / 8);
        end
        cpu.ram.putWordIntoStack(cpu.ar_pointer / 8);
        
        end : block_1
    endtask

endmodule
