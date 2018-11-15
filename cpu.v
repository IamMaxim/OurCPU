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
`define SW 21
`define LW 23
`define PUTARA 24
`define PUTOPA 25
`define POPARA 26
`define POPOPA 27
`define STOP 28
`define PUTSP 29
`define PRINTBYTE 62
`define PRINTWORD 63

module cpu(clk);
    input      clk;

    RAM ram ();

    reg [15:0] current_op_pointer;
    reg [15:0] ar_pointer;
    reg [31:0] current_op;      

    // indicates if we need to read next instuction (0) or execute currently stored one (1)
    reg        state;
    // indicates if we had already loaded our code into RAM
    reg        initialized = 0;

    reg        debug = 0;
    reg        debugExecution = 0;
    reg        debugStackOperations = 0;

    InstructionAdd instructionAdd ();
    InstructionSub instructionSub ();
    InstructionMul instructionMul ();
    InstructionDiv instructionDiv ();
    InstructionAnd instructionAnd ();
    InstructionOr instructionOr ();
    InstructionXor instructionXor ();
    InstructionNot instructionNot ();
    InstructionJmp instructionJmp ();
    InstructionJif instructionJif ();
    InstructionInc instructionInc ();
    InstructionDec instructionDec ();
    InstructionEq instructionEq ();
    InstructionLe instructionLe ();
    InstructionLee instructionLee ();
    InstructionGr instructionGr ();
    InstructionGre instructionGre ();
    InstructionPutb instructionPutb ();
    InstructionPutw instructionPutw ();
    InstructionPop instructionPop ();
    InstructionSw instructionSw ();
    InstructionLw instructionLw ();
    InstructionPutara instructionPutara ();
    InstructionPutopa instructionPutopa ();
    InstructionPopara instructionPopara ();
    InstructionPopopa instructionPopopa ();
    InstructionStop instructionStop ();
    InstructionPutsp instructionPutsp ();
    InstructionPrintWord instructionPrintWord ();

    // init state to 0
    // TODO: load code from flash to RAM here
    always@(posedge clk && !initialized) begin
        ram.stackPointer = 0;

        if (debug)
            $display("Adding instructions...");

// words should be added in inversed word-order according to RAM access model used in this CPU
// >>> INSERT YOUR PROGRAM BINARY CODE HERE <<<
begin

        ram.putWordIntoStack(185);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(-1024);
        ram.putWordIntoStack(2);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(27648);
        ram.putWordIntoStack(26);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(44);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(8);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(12288);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(7168);
        ram.putWordIntoStack(62);
        ram.putWordIntoStack(9216);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(8);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(27648);
        ram.putWordIntoStack(99);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(95);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(10);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(1);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(10);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(8);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(8);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(10);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(8);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(27648);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(27648);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(129);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(10);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(10);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(8);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(10);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(10);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(8);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(2);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(12288);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(7168);
        ram.putWordIntoStack(154);
        ram.putWordIntoStack(9216);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(2);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(164);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(2);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(2);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(182);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(4);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(23552);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(21504);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(2);
        ram.putWordIntoStack(19456);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(27648);
        ram.putWordIntoStack(193);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(24576);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(29696);
        ram.putWordIntoStack(6);
        ram.putWordIntoStack(18432);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(1024);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(26624);
        ram.putWordIntoStack(102);
        ram.putWordIntoStack(8192);
        ram.putWordIntoStack(0);
        ram.putWordIntoStack(28672);
end

        state = 0;
        current_op_pointer = 0;
        ar_pointer = 0;
        initialized = 1;
        
        if (debug) begin
            $display("Initial stack pointer: %d; in bytes: %d", ram.stackPointer, ram.stackPointer / 8);
            $display("Done. Execution can start now");
        end
    end

    always @(posedge clk && initialized && !state) begin
        if (debug)
            $display("Fetching OP from RAM; addr: %d; op number: %d", current_op_pointer, current_op_pointer / 32);
        current_op = ram.ram[current_op_pointer +: 32];
        state = 1;
    end

    always @(posedge clk && initialized && state) begin
        case (current_op[31:26])
            `ADD: instructionAdd.execute();
            `SUB: instructionSub.execute();
            `MUL: instructionMul.execute();
            `DIV: instructionDiv.execute();
            `AND: instructionAnd.execute();
            `OR: instructionOr.execute();
            `XOR: instructionXor.execute();
            `NOT: instructionNot.execute();
            `JMP: instructionJmp.execute(current_op[15:0]);
            `JIF: instructionJif.execute(current_op[15:0]);
            `INC: instructionInc.execute();
            `DEC: instructionDec.execute();
            `EQ: instructionEq.execute();
            `LE: instructionLe.execute();
            `LEE: instructionLee.execute();
            `GR: instructionGr.execute();
            `GRE: instructionGre.execute();
            `PUTB: instructionPutb.execute();
            `PUTW: instructionPutw.execute(current_op[15:0]);
            `POP: instructionPop.execute(current_op[15:0]);
            `SW: instructionSw.execute();
            `LW: instructionLw.execute();
            `PUTARA: instructionPutara.execute();
            `PUTOPA: instructionPutopa.execute();
            `POPARA: instructionPopara.execute();
            `POPOPA: instructionPopopa.execute();
            `STOP: instructionStop.execute();
            `PUTSP: instructionPutsp.execute();
            `PRINTWORD: instructionPrintWord.execute();
            default: begin
                $display("UNKNOWN INSTRUCTION WITH CODE %d!", current_op[31:26]);
                $stop;
            end
        endcase

        current_op_pointer = current_op_pointer + 32;
        state = 0;
    end

endmodule
