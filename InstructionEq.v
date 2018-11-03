module InstructionEq;
    task execute;
        begin
            reg [15:0] A, B;
            B = ram.popWordFromStack();
            A = ram.popWordFromStack();

            execute = A == B ? 1'b1 : 1'b0;
        end
    endtask

endmodule
