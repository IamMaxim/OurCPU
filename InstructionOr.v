module InstructionOr;
    task execute;
        begin
            reg [15:0] A, B;
            B = ram.popWordFromStack();
            A = ram.popWordFromStack();

            execute = A | B;
        end
    endtask

endmodule
