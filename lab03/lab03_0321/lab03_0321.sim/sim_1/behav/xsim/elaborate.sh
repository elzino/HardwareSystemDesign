#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Mar 21 10:05:46 KST 2019
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 51c483a612e94da7b6b70e49ad5cbedb --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_mac_behav xil_defaultlib.tb_mac xil_defaultlib.glbl -log elaborate.log