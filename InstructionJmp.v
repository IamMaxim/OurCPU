module InstructionJmp;
    task execute(input reg[15: 0] arg);
        begin : block_1
            $display("Executing InstructionJmp");

            $display("Address: %d; in ops: %d", arg * 32, arg);

            cpu.current_op_pointer = arg * 32;
        end : block_1
    endtask

endmodule
