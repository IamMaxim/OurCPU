module InstructionDec;
    task execute;
        begin
            reg [15:0] A;

            A = ram.popWordFromStack();

            execute = A - 1;
        end
    endtask

endmodule
