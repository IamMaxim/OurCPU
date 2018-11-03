`include "cpu.v"

module testbench_1();

    reg clk;
    cpu cpu (clk);


    initial begin
        $display("Initializing CPU...");
        clk = 0;
//        forever #10 clk = !clk;

        cpu.ram.stackPointer = 0;
        cpu.current_op_pointer = 0;

        $display("Adding instructions...");
        // add instr
        cpu.ram.putWordIntoStack(0);
        cpu.ram.putWordIntoStack(0);

        // stop instr
        cpu.ram.putWordIntoStack(0);
        cpu.ram.putWordIntoStack(16'b0111000000000000);

        cpu.ram.putWordIntoStack(2);
        cpu.ram.putWordIntoStack(3);


        cpu.initialized = 1;
        $display("Done. Execution can start now");
    end

    always
        #10 clk = ~clk;

endmodule
