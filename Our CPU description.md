Our CPU description
===
Operation format:
```
000000 00000000000000000000000000
<----> <------------------------>
6-bit operation number (so, maximum 64 ops are possible)
26-bit argument
```


| Index | Op name | Description |
| ----- | ------- | ----------- |
| 0  | add  | takes second value from stack, then takes first value from stack, then adds them and then puts back result. No overflow check.                                     |
| 1  | sub  | takes second value from stack, then takes first value from stack, then subtracts second from first and puts back result. No overflow check.                        |
| 2  | mul  | takes second value from stack, then takes first value from stack, then multiplies them and puts back result. No overflow check.                                    |
| 3  | div  | takes second value from stack, then takes first value from stack, then divides first by second and puts back result. No overflow check.                            |
| 4  | and  | takes second value from stack, then takes first value from stack, then performs bitwise AND and puts back result.                                                  |
| 5  | or   | takes second value from stack, then takes first value from stack, then performs bitwise OR and puts back result.                                                   |
| 6  | xor  | takes second value from stack, then takes first value from stack, then performs bitwise XOR and puts back result.                                                  |
| 7  | not  | takes value from stack, then performs bitwise NOT and puts back result.                                                                                            |
| 8  | jmp  | (unconditional jump) jumps to specified 16-bit address                                                                                                                                  |
| 9  | jif  | takes value from stack, checks if it is non-zero, if so, jumps to given address                                                                                    |
| 10 | inc  | takes value from stack, increments it and puts result back.                                                                                                        |
| 11 | dec  | takes value from stack, decrements it and puts result back.                                                                                                        |
| 12 | eq   | takes second value from stack, then takes first value from stack, then compares them and puts back 1 if values are equal, 0 otherwise.                             |
| 13 | le   | takes second value from stack, then takes first value from stack, then compares them and puts back 1 if first value is less that second, 0 otherwise.              |
| 14 | lee  | takes second value from stack, then takes first value from stack, then compares them and puts back 1 if first value is less or equal that second, 0 otherwise.     |
| 15 | gr   | takes second value from stack, then takes first value from stack, then compares them and puts back 1 if first value is greater that second, 0 otherwise.           |
| 16 | gre  | takes second value from stack, then takes first value from stack, then compares them and puts back 1 if first value is greater or equal that second, 0 otherwise. |
| 17 | putb | puts first 8 bits of given value to stack. |
| 18 | putw | puts first 16 bits of given value to stack. |
| 19 | pop  | Removes value of given size from the stack. |
| 21 | sw  | Takes 16-bit value from stack, then takes 16-bit address from stack and writes it to the given address |
| 23 | lw  | Takes 16-bit address from stack, then takes 16-bit value from given address and puts it into the stack |
| 24 | putara | Puts current activation record's address into stack |
| 25 | putopa | Puts current operation index into stack |
| 26 | popara | Takes 16-bit address from stack and puts it into activation record address |
| 27 | popopa | Takes 16-bit address from stack and puts it into current operation address |
| 28 | stop | Stops execution of a program |
| 29 | putsp | Puts current stack pointer to stack |

#### Debug interpreter-only instructions

| Index | Op name | Description |
| ----- | ------- | ----------- |
| 63  | printword | Pops top 16-bit value from stack and prints it. |
