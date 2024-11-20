################################################################################
# Main tcl for the Demo module
################################################################################

# ==============================================================================
proc init {} {
}

# ==============================================================================
proc setSources {} {
  variable Sources
  lappend Sources {"../hdl/app_demo_top.vhd" "VHDL 2008"}
}

# ==============================================================================
proc setAddressSpace {} {
}

# ==============================================================================
proc doOnCreate {} {
  addSources "Sources"
}

# ==============================================================================
proc doOnBuild {} {
}

# ==============================================================================
proc setSim {} {
}
