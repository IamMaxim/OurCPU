module InstructionPop;
    task execute(input reg[15:0] arg);
        begin : block_1
            $display("Executing InstructionPop");

            cpu.ram.stackPointer = cpu.ram.stackPointer - arg * 8;

            $display("Moved stack pointer back by %d; in bytes: %d", arg * 8, arg);
        end : block_1
    endtask

endmodule
