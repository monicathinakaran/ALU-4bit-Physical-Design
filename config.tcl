# Design
set ::env(DESIGN_NAME) "alu"

# Source Files
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Clock Configuration
set ::env(CLOCK_PORT) "Clk"
set ::env(CLOCK_PERIOD) "10.0"

# Synthesis Configuration
set ::env(SYNTH_STRATEGY) "AREA 0"

# Floorplan Configuration
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 100 100"
set ::env(FP_CORE_UTIL) 50
set ::env(PL_TARGET_DENSITY) 0.5

# Technology
set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"
