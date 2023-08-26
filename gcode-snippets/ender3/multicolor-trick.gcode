;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Unload filament & wait
;;;;;;;;;;;;;;;;;;;;;;;;;;;

M83 ; switch to relative E values for any needed retraction
G1 F2700 E-2 ; retract
G0 F9000 X1 Y1 ; Move back to home
TODO!  G1 F300 Z42 ; move up to get out of the way
;;G1 F6000 E-460 ; unload filament (bowden tube only)

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

G1 X20 Y3.0 Z0.2 F5000.0 ; Move to start position
G1 X200 Y3.0 Z0.2 F1500.0 E15 ; Draw the first line
G1 X200 Y4.0 Z0.2 F5000.0 ; Move to side a little
G1 X20 Y4.0 Z0.2 F1500.0 E21 ; Draw the second line
G92 E0 ; Reset Extruder

G1 F2700 E-0.8 ; Retract extruder

;;;;;;;;;;;;;;;;;;;;;;
;; Move back & reset
;;;;;;;;;;;;;;;;;;;;;;

TODO!  G1 F300 Z2.4
TODO!  G1 F9000 X106.624 Y128.054
TODO!  G1 F300 Z2.2 ; move back down to resume height
G1 F1500 E0.8
;;G1 F2700 ; restore extrusion feedrate (why?)
M82 ; switch back to absolute E values
TODO!  G92 E1755.46467
