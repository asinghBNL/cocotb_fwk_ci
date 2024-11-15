################################################################################
# Main tcl for project
################################################################################

# ==============================================================================
proc init {} {
  set ::fwfwk::LibPath ${::fwfwk::ProjectPath}/src/app_demo/hdl/
}

# ==============================================================================
proc setSources {} {
  variable vhdl

  lappend vhdl ../src/app_demo/hdl/app_demo_top.vhd
}

# ==============================================================================
proc setAddressSpace {} {
}

# ==============================================================================
proc doOnCreate {} {
  variable vhdl

  addSources vhdl

  set ::fwfwk::src::Top app_demo_top
  set tb_path [file normalize ../src/app_demo/sim/test_counter.py]
  lappend ::fwfwk::src::SimTop "$tb_path"
}

# ==============================================================================
proc doOnBuild {} {
}

# ==============================================================================
proc setSim {} {
}
