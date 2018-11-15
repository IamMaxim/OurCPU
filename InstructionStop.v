module InstructionStop;
    task execute;
        begin : block_1

        if (cpu.debugExecution) 
            $display("executing instructionStop");

        cpu.initialized = 0;
        $stop;
        end : block_1
    endtask
endmodule

