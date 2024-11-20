import random

import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def main(dut):
    #initialize clock
    clock = Clock(dut.pi_clock, 0.05, units="us")
    cocotb.start_soon(clock.start(start_high=False))

    dut.pi_reset.value = 1
    await RisingEdge(dut.pi_clock)
    dut.pi_reset.value = 0
    await RisingEdge(dut.pi_clock)

    counter = 0

    for i in range(255):
        assert dut.po_counter.value == counter, f"Fail: dut={dut.po_counter.value}, sim={counter}"
        await RisingEdge(dut.pi_clock)
        counter += 1
