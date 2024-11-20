#!/bin/bash

git submodule update --init --recursive
make env
make env_dev
source .venv/bin/activate

#comment out the following lines to disable code coverage
# or if you do not have ghdl with a gcc backend installed
cp ./CC_REPLACEMENT_FILES/Makefile.ghdl .venv/lib/python3.12/site-packages/cocotb/share/makefiles/simulators/Makefile.ghdl
cp ./CC_REPLACEMENT_FILES/fwfwk_cocotb.tcl ./fwk/src/fwfwk_cocotb.tcl
