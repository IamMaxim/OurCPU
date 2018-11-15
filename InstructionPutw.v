
module InstructionPutw;
    task execute(input reg[15: 0] arg);
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionPutw");
            $display("PuttingWord: %d", arg);
            cpu.ram.putWordIntoStack(arg);
        end : block_1
    endtask

endmodule