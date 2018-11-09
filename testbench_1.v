`include "cpu.v"

module testbench_1();

    reg clk;
    cpu cpu (clk);


    initial begin
        $display("Initializing CPU...");
        clk = 0;
    end

    always
        #10 clk = ~clk;

endmodule
