transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/AND_2.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/OR_2.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/NOT_2.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/EE_232_Q1.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/half_adder.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/EE_232_PACKG.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/FOUR_BIT_ADDER.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/XOR_2.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/FULL_ADDER.vhd}
vcom -93 -work work {C:/Users/pnb/Desktop/EE_232_ASSIGN/MULTIPLY_4.vhd}

