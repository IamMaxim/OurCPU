module InstructionLw;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            $display("Executing InstructionLw");

            cpu.ram.popWordFromStack(A);
            
            B = cpu.ram.ram[A * 8 +: 16];
            
            $display("Loading word %d -> stack", B);          

            cpu.ram.putWordIntoStack(B);
        end : block_1
    endtask

endmodule