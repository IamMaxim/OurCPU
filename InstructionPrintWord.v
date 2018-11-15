module InstructionPrintWord;
    task execute;
        begin : block_1
            reg [15:0] A;

            if (cpu.debugExecution)   
                $display("Executing InstructionPrintWord");

            cpu.ram.popWordFromStack(A);

         if (cpu.debug) begin  
            $display("Word: %d", A);
        end
        end : block_1
    endtask

endmodule
