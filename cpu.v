`define ADD 0
`define SUB 1
`define MUL 2
`define DIV 3
`define AND 4
`define OR 5
`define XOR 6
`define NOT 7
`define JMP 8
`define JIF 9
`define INC 10
`define DEC 11
`define EQ 12
`define LE 13
`define LEE 14
`define GR 15
`define GRE 16
`define PUTB 17
`define PUTW 18
`define POP 19
`define SB 20
`define SW 21
`define LB 22
`define LW 23
`define PUTARA 24
`define PUTOPA 25
`define POPARA 26
`define POPOPA 27
`define STOP 28
`define PUTSP 29

module cpu(clk);
    input      clk;

    RAM ram ();

    reg [15:0] current_op_pointer;
    reg [15:0] ar_pointer;
    reg [31:0] current_op;

    // indicates if we need to read next instuction (0) or execute currently stored one (1)
    reg        state;
    // indicates if we had already loaded our code into RAM
    reg        initialized;

    InstructionAdd instructionAdd ();
    InstructionSub instructionSub ();
    InstructionStop instructionStop ();

    // init state to 0
    // TODO: load code from flash to RAM here
    always@(posedge clk && !initialized) begin
        state = 0;
        ram.stackPointer = 0;
        current_op_pointer = 0;

        // words should be added in inversed order according to RAM access model used in this CPU
        $display("Adding instructions...");
        // add instr
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);

        // stop instr
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(16'b0111000000000000);

        $display("Adding data...");
        ram.putWordIntoStack(2);
        ram.putWordIntoStack(3);

        initialized = 1;
        $display("Done. Execution can start now");
    end

    always @(posedge clk && initialized && !state) begin
        // if (current_op_pointer == 256) begin
        //     $display("Trying to stop execution");
        //     initialized = 0;
        // end else begin

        $display("Fetching OP from RAM; addr: %d", current_op_pointer);
        current_op[31: 0] = ram.ram[current_op_pointer +: 31];
        state = 1;
        
        // end
    end

    always @(posedge clk && initialized && state) begin
        $display("Executing OP with opcode %d: %b", current_op[31: 25], current_op);
        case (current_op[31:26])
            `ADD: instructionAdd.execute();
            `SUB: instructionSub.execute();
            `STOP: instructionStop.execute();

        endcase

        current_op_pointer = current_op_pointer + 32;
        state = 0;
    end

endmodule
