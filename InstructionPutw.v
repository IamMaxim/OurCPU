
module InstructionPutw;
    task execute(input reg[15: 0] arg);
        begin : block_1
            reg [15:0] A;

            if (cpu.debugExecution)   
                $display("Executing InstructionPutw");
            if (cpu.debug) begin
                $display("PuttingWord: %d", arg);
            end

            cpu.ram.putWordIntoStack(arg);
        end : block_1
    endtask

endmodule