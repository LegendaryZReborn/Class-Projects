onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /main/upd
add wave -noupdate /main/exe
add wave -noupdate /main/instruction
add wave -noupdate /main/al_valueout
add wave -noupdate /main/bl_valueout
add wave -noupdate /main/tl_valueout
add wave -noupdate /main/a0
add wave -noupdate /main/a1
add wave -noupdate /main/a2
add wave -noupdate /main/a3
add wave -noupdate /main/a4
add wave -noupdate /main/a5
add wave -noupdate /main/a6
add wave -noupdate /main/b0
add wave -noupdate /main/b1
add wave -noupdate /main/b2
add wave -noupdate /main/b3
add wave -noupdate /main/b4
add wave -noupdate /main/b5
add wave -noupdate /main/b6
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {53970 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {545 ns} {801 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /main/upd 
wave create -pattern none -portmode in -language vhdl /main/exe 
wave create -pattern none -portmode in -language vhdl -range 15 0 /main/instruction 
wave create -pattern none -portmode out -language vhdl -range 7 0 /main/al_valueout 
wave create -pattern none -portmode out -language vhdl -range 7 0 /main/bl_valueout 
wave create -pattern none -portmode out -language vhdl -range 7 0 /main/tl_valueout 
wave create -pattern none -portmode out -language vhdl /main/a0 
wave create -pattern none -portmode out -language vhdl /main/a1 
wave create -pattern none -portmode out -language vhdl /main/a2 
wave create -pattern none -portmode out -language vhdl /main/a3 
wave create -pattern none -portmode out -language vhdl /main/a4 
wave create -pattern none -portmode out -language vhdl /main/a5 
wave create -pattern none -portmode out -language vhdl /main/a6 
wave create -pattern none -portmode out -language vhdl /main/b0 
wave create -pattern none -portmode out -language vhdl /main/b1 
wave create -pattern none -portmode out -language vhdl /main/b2 
wave create -pattern none -portmode out -language vhdl /main/b3 
wave create -pattern none -portmode out -language vhdl /main/b4 
wave create -pattern none -portmode out -language vhdl /main/b5 
wave create -pattern none -portmode out -language vhdl /main/b6 
wave modify -driver freeze -pattern repeater -initialvalue 0000000000000000 -period 300ns -sequence { 1011001100010001 1111111011000000 1101000011100000 0000000011011000 0010100011011000  } -repeat forever -range 15 0 -starttime 0ns -endtime 1300ns Edit:/main/instruction 
wave modify -driver freeze -pattern repeater -initialvalue 0 -period 50ns -sequence { 1 0 0 1 1 1  } -repeat forever -starttime 0ns -endtime 1300ns Edit:/main/exe 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 50ns -sequence { 1 1 1 1 1 0 0  } -repeat forever -starttime 0ns -endtime 1300ns Edit:/main/upd 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 50ns -sequence { 1 1 0 0 1 1 1  } -repeat forever -starttime 0ns -endtime 1300ns Edit:/main/upd 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 50ns -sequence { 1 1 1 0 0 1  } -repeat forever -starttime 0ns -endtime 1300ns Edit:/main/upd 
wave modify -driver freeze -pattern repeater -initialvalue 1 -period 50ns -sequence { 1 1 1 1 0 0  } -repeat forever -starttime 0ns -endtime 1300ns Edit:/main/upd 
WaveCollapseAll -1
wave clipboard restore
