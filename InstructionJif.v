module InstructionJif;
    task execute(input reg[15: 0] arg);
        begin : block_1
            reg [15:0] A;

            if (cpu.debugExecution)
                $display("Executing InstructionJif");

            cpu.ram.popWordFromStack(A);

            if (cpu.debug) begin    
                $display("Value: %d", A);
            end

            if (A != 0)
              begin
                if (cpu.debug) begin
                    $display("Jumping to address: %d; in ops: %d", arg * 32, arg);
                end   
                cpu.current_op_pointer = arg * 32;
                
            end
        
        end : block_1
    endtask

endmodule
