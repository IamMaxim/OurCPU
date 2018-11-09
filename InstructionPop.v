module InstructionPop;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionPop");

            ram.popWordFromStack(A);

            $display("Given value: %d", A);

        end : block_1
    endtask

endmodule
