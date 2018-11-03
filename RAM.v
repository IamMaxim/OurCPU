module RAM;
    reg [1024 * 8: 0] ram;
    reg [15: 0] stackPointer;

    task setStackPointer;
        input reg [15: 0] address;
        begin
            stackPointer = address;
        end
    endtask

    task popWordFromStack(output reg [15: 0] res);
        begin : block_1
            // res = ram[stackPointer - 16 +: 16];
            // res[15: 8] = ram[stackPointer - 16 +: 8];
            // res[7: 0] = ram[stackPointer - 8 +: 8];
            res[0 +: 16] = ram[stackPointer - 16 +: 16];
            stackPointer = stackPointer - 16;
            $display("Popped word: %b", res);
        end
    endtask

    task putWordIntoStack;
        input reg [15: 0] in;
        begin
            $display("Putting %b into stack", in);
            // ram[stackPointer] = in;
            // ram[stackPointer +: 8] = in[7 +: 8];
            // ram[stackPointer + 8 +: 8] = in[0 +: 8];
            ram[stackPointer +: 16] = in[0 +: 16];
            stackPointer = stackPointer + 16;
        end
    endtask

endmodule
