
module InstructionNot;
    task execute;
        begin : block_1
            reg [15:0] A;
            if (cpu.debugExecution)
                $display("Executing InstructionNot");

            cpu.ram.popWordFromStack(A);
            
            if (cpu.debug) begin    
                $display("Number: %d", A);
            end

            cpu.ram.putWordIntoStack(A == 1 ? 0 : 1);
        end : block_1
    endtask

endmodule