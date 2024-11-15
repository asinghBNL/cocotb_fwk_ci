################################################################################
# Main tcl for project
################################################################################

# ==============================================================================
proc init {} {
  addSrcModule app ${::fwfwk::ProjectPath}/src/app_demo/tcl/main.tcl
  addSrcModule example_desyrdl ${::fwfwk::ProjectPath}/src/example_desyrdl/tcl/main.tcl

  set ::fwfwk::addr::TypesToGen {vhdl map}
  set ::fwfwk::addr::TypesToAdd {vhdl}
}

# ==============================================================================
proc setSources {} {
}

# ==============================================================================
proc setAddressSpace {} {
  addAddressSpace ::fwfwk::AddressSpace "example_desyrdl" ARRAY {C0 0x00800000 8M} example_desyrdl::AddressSpace
}

# ==============================================================================
proc doOnCreate {} {
}

# ==============================================================================
proc doOnBuild {} {
}

# ==============================================================================
proc setSim {} {
}
