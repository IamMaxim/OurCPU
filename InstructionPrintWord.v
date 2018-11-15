module InstructionPrintWord;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionPrintWord");

            cpu.ram.popWordFromStack(A);

            $display("Word: %d", A);
        end : block_1
    endtask

endmodule
