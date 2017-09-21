view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 7 0 /instructioncode/sl_in 
wave create -pattern none -portmode out -language vhdl -range 7 0 /instructioncode/sl_out 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 20ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 160ns Edit:/instructioncode/sl_in 
WaveCollapseAll -1
wave clipboard restore
