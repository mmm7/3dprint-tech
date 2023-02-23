;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Unload filament & wait
;;;;;;;;;;;;;;;;;;;;;;;;;;;

M83 ; switch to relative E values for any needed retraction
G1 F2700 E-7 ; retract
G0 F9000 X1 Y1 ; Move back to home
TODO!  G1 F300 Z42 ; move up to get out of the way
G1 F6000 E-460 ; unload filament

M400 ; wait for all commands
M25 ; Pause print
M400 ; wait for all commands
G0 F3000 X6 ; shake
G0 F3000 Y6 ; shake
G1 F3000 X5 ; shake
G1 F3000 Y5 ; shake
G0 F3000 X6 ; shake
G0 F3000 Y6 ; shake
G1 F3000 X5 ; shake
G1 F3000 Y5 ; shake
M400 ; wait for all commands
G92 E0 ; Reset Extruder

;;;;;;;;;;;;;;;;;;;;;;;
;; Additional priming
;;;;;;;;;;;;;;;;;;;;;;;

G1 X4.0 Y20 Z0.3 F5000.0 ; Move to start position
G1 X4.0 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X5.0 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X5.0 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G1 X6.0 Y20.0 Z0.3 F5000.0 ; Move to side a little
G1 X6.0 Y200 Z0.3 F1500.0 E45 ; Draw the third line
G1 X8.0 Y200.0 Z0.2 F5000.0 ; Move to side a little
G1 X8.0 Y20 Z0.2 F1500.0 E51 ; Draw the fourth line
G92 E0 ; Reset Extruder
G1 F2700 E-5 ; Retract extruder
G1 X10.0 Y30.0 F3000.0 ; Move horizontally

;;;;;;;;;;;;;;;;;;;;;;
;; Move back & reset
;;;;;;;;;;;;;;;;;;;;;;

TODO!  G1 F300 Z2.4
TODO!  G1 F9000 X106.624 Y128.054
TODO!  G1 F300 Z2.2 ; move back down to resume height
G1 F1500 E7
G1 F2700 ; restore extrusion feedrate
M82 ; switch back to absolute E values
TODO!  G92 E1755.46467
