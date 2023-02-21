; Begin Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
M140 S{material_bed_temperature} ; start heating the bed without waiting
M104 S{material_print_temperature} T0 ; start heating hot-end without waiting
M105
M190 S{material_bed_temperature} ; wait for bed temperature
M109 S{material_print_temperature} T0 ; wait for hot-end temperature
G28 ; Home all axes
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X1 Y200.0 Z0.2 F5000.0 ; Move to side a little
G1 X1 Y20 Z0.2 F1500.0 E21 ; Draw the second line
G92 E0 ; Reset Extruder
; End Ender 3 Custom Start G-code
