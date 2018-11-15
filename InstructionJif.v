module InstructionJif;
    task execute(input reg[15: 0] arg);
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionJif");

            cpu.ram.popWordFromStack(A);

            $display("Value: %d", A);
            
            if (A != 0)
              begin
                $display("Jumping to address: %d; in ops: %d", arg * 32, arg);
                cpu.current_op_pointer = arg * 32;
              end
        
        end : block_1
    endtask

endmodule
