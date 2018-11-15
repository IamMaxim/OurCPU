module InstructionJmp;
    task execute(input reg[15: 0] arg);
        begin : block_1
            if (cpu.debugExecution)
                $display("Executing InstructionJmp");

            if (cpu.debug) begin
                $display("Address: %d; in ops: %d", arg * 32, arg);
            end
            cpu.current_op_pointer = arg * 32;
            
        end : block_1
    endtask

endmodule
