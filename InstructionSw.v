module InstructionSw;
    task execute;
        begin : block_1
            reg [15:0] A;
            reg [15:0] B;

            if (cpu.debugExecution) 
                $display("Executing InstructionSw");

            cpu.ram.popWordFromStack(A);
            cpu.ram.popWordFromStack(B);

            if (cpu.debug) begin
                $display("Storing %d -> %d (in bytes)", A, B);
            end    
            cpu.ram.ram[B * 8 +: 16] = A;
            
        end : block_1
    endtask

endmodule

//#Maxim_help