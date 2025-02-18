onerror {exit -code 1}
vlib work
vlog -work work Led_Control.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Led_Control_vlg_vec_tst -voptargs="+acc"
vcd file -direction Led_Control.msim.vcd
vcd add -internal Led_Control_vlg_vec_tst/*
vcd add -internal Led_Control_vlg_vec_tst/i1/*
run -all
quit -f
