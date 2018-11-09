module InstructionDec;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionDec");

        
            ram.popWordFromStack(A);

            $display("First number: %d", A);

            ram.putWordIntoStack(A - 1);
        end : block_1
    endtask

endmodule