
module InstructionPutw;
    task execute;
        begin : block_1
            reg [15:0] A;

            $display("Executing InstructionPutw");

           
            ram.popWordFromStack(A);

            $display("Word: %d", A);
            

            ram.putWordIntoStack(A );
        end : block_1
    endtask

endmodule