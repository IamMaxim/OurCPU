module InstructionPutopa;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionPutopa");

            ram.popWordFromStack(A);

            $display("First number: %d", A);

            ram.putWordIntoStack(cpu.current_op_pointer);
        end : block_1
    endtask

endmodule





