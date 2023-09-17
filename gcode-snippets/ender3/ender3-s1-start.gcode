; Ender 3 S1 Start G-code
G92 E0 ; Reset Extruder
G28 ; Home all axes
G1 Z10.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0 Y0

M104 S{material_print_temperature_layer_0}
M190 S{material_bed_temperature_layer_0}
M109 S{material_print_temperature_layer_0}

G1 X20 Y1.0 Z0.2 F5000.0 ; Move to start position
G1 X200 Y1.0 Z0.2 F1500.0 E15 ; Draw the first line
G1 X200 Y2.0 Z0.2 F5000.0 ; Move to side a little
G1 X20 Y2.0 Z0.2 F1500.0 E21 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X20 Y5.0 Z0.3 F5000.0 ; Move over to prevent blob squish
