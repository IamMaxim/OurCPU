module InstructionNot;
    task execute;
        begin
            reg [15:0] A;
            A = ram.popWordFromStack();

            execute = A >= 0 ? 1'b1 : 1'b0;
        end
    endtask

endmodule
