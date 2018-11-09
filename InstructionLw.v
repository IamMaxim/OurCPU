module InstructionLw;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            $display("Executing InstructionLw");

            ram.popWordFromStack(A);
            
            
            // как вытащить переменную из стека по адресу????

            $display("First number: %d", A);
          

            ram.putWordIntoStack(A);
        end : block_1
    endtask

endmodule