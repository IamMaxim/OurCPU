#!/bin/bash

# PATH=$PATH:/home/maxim/disk2/IntelFPGA/modelsim_ase/bin
PATH=$PATH:/home/maxim/disk1/intelFPGA/18.0/modelsim_ase/bin

vlib work
vlog *.v

vsim -c testbench_1 -do "run; exit"
