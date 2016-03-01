# CMake generated Testfile for 
# Source directory: /home/briggsb/.tmux/tmux-mem-cpu-load
# Build directory: /home/briggsb/.tmux/tmux-mem-cpu-load
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(usage "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "-h")
set_tests_properties(usage PROPERTIES  WILL_FAIL "TRUE")
add_test(no_arguments "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load")
add_test(custom_interval "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "-i" "3")
add_test(no_cpu_graph "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "-g" "0")
add_test(colors "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "--colors")
add_test(invalid_status_interval "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "-i" "-1")
set_tests_properties(invalid_status_interval PROPERTIES  WILL_FAIL "TRUE")
add_test(invalid_graph_lines "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "--graph_lines" "-2")
set_tests_properties(invalid_graph_lines PROPERTIES  WILL_FAIL "TRUE")
add_test(old_option_specification "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "2" "8")
set_tests_properties(old_option_specification PROPERTIES  WILL_FAIL "TRUE")
add_test(memory_mode_free_memory "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "-m" "1")
add_test(memory_mode_used_percentage "/home/briggsb/.tmux/tmux-mem-cpu-load/tmux-mem-cpu-load" "-m" "2")
