
module InstructionNot;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionNot");

            cpu.ram.popWordFromStack(A);

            $display("Number: %d", A);

            cpu.ram.putWordIntoStack(A == 1 ? 0 : 1);
        end : block_1
    endtask

endmodule