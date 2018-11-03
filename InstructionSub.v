module InstructionSub;
    task execute;
        begin : block_1
            reg [15:0] A, B;

            $display("Executing InstructionAdd");

            ram.popWordFromStack(B);
            ram.popWordFromStack(A);

            ram.putWordIntoStack(A - B);
        end
    endtask

endmodule
