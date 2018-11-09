module InstructionJif;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionJif");

            ram.popWordFromStack(A);

            $display("Value: %d", A);
            
            if (A != 0)
              begin
                ram.setStackPointer(A);
              end
        
        end : block_1
    endtask

endmodule
