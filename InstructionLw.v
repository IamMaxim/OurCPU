module InstructionLw;
    task execute;
        begin : block_1
            reg [15:0] A, B;
            if (cpu.debugExecution)
                 $display("Executing InstructionLw");

            cpu.ram.popWordFromStack(A);
            
            B = cpu.ram.ram[A * 8 +: 16];
            
            if (cpu.debug) begin
                $display("Loading word %d -> stack", B);          
            end
            cpu.ram.putWordIntoStack(B);
        end : block_1
    endtask

endmodule