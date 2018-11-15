module InstructionDec;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionDec");

        
            cpu.ram.popWordFromStack(A);

            $display("First number: %d", A);

            cpu.ram.putWordIntoStack(A - 1);
        end : block_1
    endtask

endmodule