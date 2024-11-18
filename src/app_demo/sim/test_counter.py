import os
from pathlib import Path

import random

import cocotb
from cocotb.triggers import Timer
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock
from cocotb.runner import get_runner
import cocotb.binary
import cocotb.utils

N = 32

@cocotb.test()
async def counter_tb(dut):
    #initialize clock
    clock = Clock(dut.pi_clock, 0.05, units="us")
    cocotb.start_soon(clock.start(start_high=False))

    #apply reset
    dut.pi_reset.value = 1
    await RisingEdge(dut.pi_clock)
    dut.pi_reset.value = 0
    await RisingEdge(dut.pi_clock)

    counter = 0

    for i in range(255):
        assert dut.po_counter.value == counter, f"FAIL: DUT={dut.po_counter.value}, SIM={counter}"
        counter += 2
        await RisingEdge(dut.pi_clock)
