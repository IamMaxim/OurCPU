module InstructionInc;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionInc");

           
            ram.popWordFromStack(A);

            $display("First number: %d", A);
         

            ram.putWordIntoStack(A + 1);
        end : block_1
    endtask

endmodule