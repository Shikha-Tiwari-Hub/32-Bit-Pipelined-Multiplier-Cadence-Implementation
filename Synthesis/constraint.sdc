###############################################################
# SDC for pipeline_multi_4in_32bit
###############################################################

# ---- Create Clock (100 MHz, 10ns period) ----
create_clock -name CLK -period 10 [get_ports clk]


# ---- Input Delays (relative to clock edge) ----
# You can adjust values if your external interface requires.
set_input_delay 2 -clock CLK [get_ports {g_InA0[*]}]
set_input_delay 2 -clock CLK [get_ports {g_InA1[*]}]
set_input_delay 2 -clock CLK [get_ports {g_InA2[*]}]
set_input_delay 2 -clock CLK [get_ports {g_InA3[*]}]


# ---- Output Delays (relative to clock) ----
set_output_delay 2 -clock CLK [get_ports {g_outM[*]}]


# ---- False paths (disable testbench-only paths) ----
# Uncomment if needed
# set_false_path -from [get_ports clk]
# set_false_path -from [get_ports {g_InA*}]


# ---- Optional: Max transition and load constraints ----
# set_max_transition 0.5 [current_design]
# set_load 0.1 [all_outputs]

###############################################################

