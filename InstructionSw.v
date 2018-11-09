module InstructionSw;
    task execute;
        begin : block_1
            reg [15:0] A;
            reg [15:0] B;

            $display("Executing InstructionSw");

            ram.popWordFromStack(A);
            ram.popWordFromStack(B);
            
           ram.putWordIntoStack(A[15:8]);
        end : block_1
    endtask

endmodule

//#Maxim_help