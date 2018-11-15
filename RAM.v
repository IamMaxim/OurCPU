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
            res[0 +: 16] = ram[stackPointer - 16 +: 16];
            stackPointer = stackPointer - 16;
            if (cpu.debugStackOperations)
                $display("Popped %d", res);
        end
    endtask

    task putWordIntoStack;
        input reg [15: 0] in;
        begin
            if (cpu.debugStackOperations)
                $display("Putting %d", in);
            ram[stackPointer +: 16] = in[0 +: 16];
            stackPointer = stackPointer + 16;
        end
    endtask

endmodule
