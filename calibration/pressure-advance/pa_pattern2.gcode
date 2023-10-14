
; ### Ellis' Pressure Advance / Linear Advance Calibration Tool ###
;
; Original Marlin linear advance calibration tool by Sineos [https://github.com/Sineos]
; Heavily modified/rewritten by Andrew Ellis [https://github.com/AndrewEllis93]
;
; -------------------------------------------
; Generated: Tue Sep 05 2023 21:26:42 GMT+0200 (Central European Summer Time)
; -------------------------------------------
;
; Advanced Mode: true
;
; Printer:
;  - Firmware: marlin1_1_9
;  - Bed Shape: Rect
;  - Bed Size X: 200 mm
;  - Bed Size Y: 200 mm
;  - Origin Bed Center: false
;  - Tool Index: Disabled (0)
;  - Travel Speed: 120 mm/s
;  - Nozzle Diameter: 0.4 mm
;  - Filament Diameter: 1.75 mm
;  - Extrusion Multiplier: 0.98
;
; Retraction / Z Hop:
;  - Firmware Retraction: false
;  - Retraction Distance: 0.5 mm
;  - Retract Speed: 35 mm/s
;  - Unretract Speed: 35 mm/s
;  - Z Hop Enable: true
;  - Z Hop Height: 0.1mm
;
; First Layer Settings:
;  - First Layer Height: 0.25 mm
;  - First Layer Printing Speed: 30 mm/s
;  - First Layer Fan Speed: 0%
;  - Anchor Option: anchor_frame
;  - Anchor Frame Perimeters: 6
;  - Anchor Line Width: 140 %
;
; Print Settings:
;  - Line Width: 112.5 %
;  - Layer Count: 4
;  - Layer Height: 0.2 mm
;  - Print Speed: 30 mm/s
;  - Acceleration: Disabled
;  - Fan Speed: 100%
;
; Pattern Settings (Using defaults):
;  - Wall Count: 3
;  - Side Length: 30 mm
;  - Spacing: 2 mm
;  - Corner Angle: 90 degrees 
;  - Printing Direction: 0 degree
;
; Pressure Advance Stepping:
;  - LA Start Value: 0
;  - LA End Value: 0.08
;  - LA Increment: 0.005
;  - Show on LCD: false
;  - Number Tab: false
;
; Start / End G-code:
;  - Hotend Temp: 200C
;  - Bed Temp: 60C
;  - Don't Add G28: false
;  - Don't Add Heating G-Codes: false
;
; Calculated Values:
;  - Print Size X: 83.02 mm
;  - Print Size Y: 53.99 mm
;  - Number of Patterns to Print: 17
;  - LA Values: 0, 0.005, 0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08
;
; Prepare printing
;
G28                 ; Home all axes
G90                 ; Absolute XYZ
G1 Z5 F100          ; Z raise
M190 S60    ; Set & wait for bed temp
M109 S200 ; Set & wait for hotend temp
;G29                ; Auto bed leveling
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G92 E0 ; Reset extruder distance
;
;  Begin printing
;
M106 S0 ; Set fan speed
G1 E-0.5 F2100 ; Retract
G0 Z5 F7200 ; Z raise
G0 X58.4875 Y73.0068 F7200 ; Move to start position
G0 Z0.25 F7200 ; Move to start layer height
G1 E0.5 F2100 ; Un-retract
M900 K0 ; Set linear advance k factor to start value
G1 X58.4875 Y115.4332 E2.1882 F1800 ; Draw perimeter (up)
G1 X141.5125 Y115.4332 E4.28213 F1800 ; Draw perimeter (right)
G1 X141.5125 Y73.0068 E2.1882 F1800 ; Draw perimeter (down)
G1 X58.4875 Y73.0068 E4.28213 F1800 ; Draw perimeter (left)
G0 X58.9939 Y73.5131 F7200 ; Step inwards to print next perimeter
G1 X58.9939 Y114.9269 E2.13597 F1800 ; Draw perimeter (up)
G1 X141.0061 Y114.9269 E4.22989 F1800 ; Draw perimeter (right)
G1 X141.0061 Y73.5131 E2.13597 F1800 ; Draw perimeter (down)
G1 X58.9939 Y73.5131 E4.22989 F1800 ; Draw perimeter (left)
G0 X59.5002 Y74.0195 F7200 ; Step inwards to print next perimeter
G1 X59.5002 Y114.4205 E2.08374 F1800 ; Draw perimeter (up)
G1 X140.4998 Y114.4205 E4.17766 F1800 ; Draw perimeter (right)
G1 X140.4998 Y74.0195 E2.08374 F1800 ; Draw perimeter (down)
G1 X59.5002 Y74.0195 E4.17766 F1800 ; Draw perimeter (left)
G0 X60.0066 Y74.5258 F7200 ; Step inwards to print next perimeter
G1 X60.0066 Y113.9142 E2.0315 F1800 ; Draw perimeter (up)
G1 X139.9935 Y113.9142 E4.12543 F1800 ; Draw perimeter (right)
G1 X139.9935 Y74.5258 E2.0315 F1800 ; Draw perimeter (down)
G1 X60.0066 Y74.5258 E4.12543 F1800 ; Draw perimeter (left)
G0 X60.5129 Y75.0322 F7200 ; Step inwards to print next perimeter
G1 X60.5129 Y113.4078 E1.97927 F1800 ; Draw perimeter (up)
G1 X139.4871 Y113.4078 E4.0732 F1800 ; Draw perimeter (right)
G1 X139.4871 Y75.0322 E1.97927 F1800 ; Draw perimeter (down)
G1 X60.5129 Y75.0322 E4.0732 F1800 ; Draw perimeter (left)
G0 X61.0192 Y75.5385 F7200 ; Step inwards to print next perimeter
G1 X61.0192 Y112.9015 E1.92704 F1800 ; Draw perimeter (up)
G1 X138.9808 Y112.9015 E4.02097 F1800 ; Draw perimeter (right)
G1 X138.9808 Y75.5385 E1.92704 F1800 ; Draw perimeter (down)
G1 X61.0192 Y75.5385 E4.02097 F1800 ; Draw perimeter (left)
G0 Z0.25 F7200 ; Move to layer height
G0 X61.3926 Y75.9119 F7200 ; Move to pattern start

M900 K0 ; Set linear advance k factor
G1 X79.7007 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X61.3926 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X61.9683 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.2764 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X61.9683 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X62.544 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.8521 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X62.544 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X64.994 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.005 ; Set linear advance k factor
G1 X83.3021 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X64.994 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X65.5697 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X83.8778 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X65.5697 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X66.1454 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X84.4535 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X66.1454 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X68.5954 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.01 ; Set linear advance k factor
G1 X86.9035 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X68.5954 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X69.1711 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X87.4792 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X69.1711 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X69.7468 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X88.0549 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X69.7468 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X72.1968 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.015 ; Set linear advance k factor
G1 X90.5049 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X72.1968 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X72.7725 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.0806 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X72.7725 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X73.3482 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.6563 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X73.3482 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X75.7982 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.02 ; Set linear advance k factor
G1 X94.1063 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X75.7982 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X76.3739 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X94.682 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X76.3739 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X76.9496 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X95.2577 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X76.9496 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X79.3996 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.025 ; Set linear advance k factor
G1 X97.7077 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X79.3996 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X79.9753 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.2834 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X79.9753 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X80.551 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.8591 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X80.551 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X83.001 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.03 ; Set linear advance k factor
G1 X101.3091 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X83.001 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X83.5767 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X101.8848 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X83.5767 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X84.1523 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X102.4605 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X84.1523 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X86.6023 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.035 ; Set linear advance k factor
G1 X104.9105 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X86.6023 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X87.178 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X105.4862 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X87.178 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X87.7537 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X106.0619 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X87.7537 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X90.2037 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.04 ; Set linear advance k factor
G1 X108.5119 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X90.2037 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X90.7794 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.0876 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X90.7794 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X91.3551 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.6633 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X91.3551 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X93.8051 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.045 ; Set linear advance k factor
G1 X112.1133 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X93.8051 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X94.3808 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X112.689 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X94.3808 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X94.9565 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X113.2647 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X94.9565 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X97.4065 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.05 ; Set linear advance k factor
G1 X115.7147 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X97.4065 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X97.9822 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.2904 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X97.9822 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X98.5579 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.8661 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X98.5579 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X101.0079 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.055 ; Set linear advance k factor
G1 X119.3161 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X101.0079 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X101.5836 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.8917 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X101.5836 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X102.1593 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.4674 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X102.1593 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X104.6093 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.06 ; Set linear advance k factor
G1 X122.9174 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X104.6093 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X105.185 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X123.4931 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X105.185 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X105.7607 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X124.0688 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X105.7607 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X108.2107 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.065 ; Set linear advance k factor
G1 X126.5188 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X108.2107 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X108.7864 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.0945 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X108.7864 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X109.3621 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.6702 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X109.3621 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X111.8121 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.07 ; Set linear advance k factor
G1 X130.1202 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X111.8121 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X112.3878 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.6959 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X112.3878 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X112.9635 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X131.2716 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X112.9635 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X115.4135 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.075 ; Set linear advance k factor
G1 X133.7216 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X115.4135 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X115.9892 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.2973 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X115.9892 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X116.5649 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.873 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X116.5649 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X119.0149 Y75.9119 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.08 ; Set linear advance k factor
G1 X137.323 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X119.0149 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X119.5906 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X137.8987 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X119.5906 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X120.1663 Y75.9119 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X138.4744 Y94.22 E1.04529 F1800 ; Print pattern wall
G1 X120.1663 Y112.5281 E1.04529 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X61.3926 Y75.9119 F7200 ; Move back to start position
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M106 S255 ; Set fan speed
G0 Z0.45 F7200 ; Move to layer height
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X58.4875 Y73.0068 F7200 ; Move to pattern start

G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0 ; Set linear advance k factor
G1 X79.7007 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X58.4875 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X59.0632 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.2764 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X59.0632 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X59.6389 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.8521 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X59.6389 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X62.0889 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.005 ; Set linear advance k factor
G1 X83.3021 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X62.0889 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X62.6646 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X83.8778 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X62.6646 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X63.2403 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X84.4535 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X63.2403 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X65.6903 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.01 ; Set linear advance k factor
G1 X86.9035 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X65.6903 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X66.266 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X87.4792 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X66.266 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X66.8417 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X88.0549 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X66.8417 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X69.2917 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.015 ; Set linear advance k factor
G1 X90.5049 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X69.2917 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X69.8674 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.0806 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X69.8674 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X70.4431 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.6563 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X70.4431 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X72.8931 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.02 ; Set linear advance k factor
G1 X94.1063 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X72.8931 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X73.4688 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X94.682 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X73.4688 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X74.0445 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X95.2577 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X74.0445 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X76.4945 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.025 ; Set linear advance k factor
G1 X97.7077 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X76.4945 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X77.0702 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.2834 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X77.0702 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X77.6459 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.8591 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X77.6459 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X80.0959 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.03 ; Set linear advance k factor
G1 X101.3091 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X80.0959 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X80.6716 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X101.8848 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X80.6716 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X81.2473 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X102.4605 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X81.2473 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X83.6973 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.035 ; Set linear advance k factor
G1 X104.9105 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X83.6973 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X84.273 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X105.4862 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X84.273 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X84.8487 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X106.0619 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X84.8487 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X87.2987 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.04 ; Set linear advance k factor
G1 X108.5119 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X87.2987 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X87.8744 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.0876 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X87.8744 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X88.4501 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.6633 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X88.4501 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X90.9001 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.045 ; Set linear advance k factor
G1 X112.1133 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X90.9001 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X91.4758 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X112.689 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X91.4758 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X92.0515 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X113.2647 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X92.0515 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X94.5015 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.05 ; Set linear advance k factor
G1 X115.7147 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X94.5015 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X95.0771 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.2904 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X95.0771 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X95.6528 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.8661 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X95.6528 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X98.1028 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.055 ; Set linear advance k factor
G1 X119.3161 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X98.1028 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X98.6785 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.8917 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X98.6785 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X99.2542 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.4674 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X99.2542 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X101.7042 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.06 ; Set linear advance k factor
G1 X122.9174 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X101.7042 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X102.2799 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X123.4931 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X102.2799 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X102.8556 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X124.0688 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X102.8556 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X105.3056 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.065 ; Set linear advance k factor
G1 X126.5188 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X105.3056 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X105.8813 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.0945 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X105.8813 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X106.457 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.6702 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X106.457 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X108.907 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.07 ; Set linear advance k factor
G1 X130.1202 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X108.907 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X109.4827 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.6959 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X109.4827 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X110.0584 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X131.2716 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X110.0584 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X112.5084 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.075 ; Set linear advance k factor
G1 X133.7216 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X112.5084 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X113.0841 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.2973 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X113.0841 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X113.6598 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.873 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X113.6598 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X116.1098 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.08 ; Set linear advance k factor
G1 X137.323 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X116.1098 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X116.6855 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X137.8987 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X116.6855 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X117.2612 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X138.4744 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X117.2612 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X58.4875 Y73.0068 F7200 ; Move back to start position
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G0 Z0.65 F7200 ; Move to layer height
M900 K0 ; Set linear advance k factor
G1 X79.7007 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X58.4875 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X59.0632 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.2764 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X59.0632 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X59.6389 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.8521 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X59.6389 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X62.0889 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.005 ; Set linear advance k factor
G1 X83.3021 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X62.0889 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X62.6646 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X83.8778 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X62.6646 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X63.2403 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X84.4535 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X63.2403 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X65.6903 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.01 ; Set linear advance k factor
G1 X86.9035 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X65.6903 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X66.266 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X87.4792 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X66.266 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X66.8417 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X88.0549 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X66.8417 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X69.2917 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.015 ; Set linear advance k factor
G1 X90.5049 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X69.2917 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X69.8674 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.0806 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X69.8674 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X70.4431 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.6563 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X70.4431 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X72.8931 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.02 ; Set linear advance k factor
G1 X94.1063 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X72.8931 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X73.4688 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X94.682 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X73.4688 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X74.0445 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X95.2577 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X74.0445 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X76.4945 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.025 ; Set linear advance k factor
G1 X97.7077 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X76.4945 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X77.0702 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.2834 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X77.0702 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X77.6459 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.8591 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X77.6459 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X80.0959 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.03 ; Set linear advance k factor
G1 X101.3091 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X80.0959 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X80.6716 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X101.8848 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X80.6716 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X81.2473 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X102.4605 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X81.2473 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X83.6973 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.035 ; Set linear advance k factor
G1 X104.9105 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X83.6973 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X84.273 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X105.4862 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X84.273 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X84.8487 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X106.0619 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X84.8487 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X87.2987 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.04 ; Set linear advance k factor
G1 X108.5119 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X87.2987 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X87.8744 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.0876 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X87.8744 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X88.4501 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.6633 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X88.4501 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X90.9001 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.045 ; Set linear advance k factor
G1 X112.1133 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X90.9001 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X91.4758 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X112.689 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X91.4758 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X92.0515 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X113.2647 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X92.0515 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X94.5015 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.05 ; Set linear advance k factor
G1 X115.7147 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X94.5015 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X95.0771 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.2904 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X95.0771 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X95.6528 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.8661 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X95.6528 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X98.1028 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.055 ; Set linear advance k factor
G1 X119.3161 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X98.1028 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X98.6785 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.8917 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X98.6785 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X99.2542 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.4674 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X99.2542 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X101.7042 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.06 ; Set linear advance k factor
G1 X122.9174 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X101.7042 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X102.2799 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X123.4931 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X102.2799 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X102.8556 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X124.0688 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X102.8556 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X105.3056 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.065 ; Set linear advance k factor
G1 X126.5188 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X105.3056 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X105.8813 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.0945 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X105.8813 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X106.457 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.6702 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X106.457 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X108.907 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.07 ; Set linear advance k factor
G1 X130.1202 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X108.907 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X109.4827 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.6959 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X109.4827 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X110.0584 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X131.2716 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X110.0584 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X112.5084 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.075 ; Set linear advance k factor
G1 X133.7216 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X112.5084 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X113.0841 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.2973 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X113.0841 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X113.6598 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.873 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X113.6598 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X116.1098 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.08 ; Set linear advance k factor
G1 X137.323 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X116.1098 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X116.6855 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X137.8987 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X116.6855 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X117.2612 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X138.4744 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X117.2612 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X58.4875 Y73.0068 F7200 ; Move back to start position
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G0 Z0.85 F7200 ; Move to layer height
M900 K0 ; Set linear advance k factor
G1 X79.7007 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X58.4875 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X59.0632 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.2764 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X59.0632 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X59.6389 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X80.8521 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X59.6389 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X62.0889 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.005 ; Set linear advance k factor
G1 X83.3021 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X62.0889 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X62.6646 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X83.8778 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X62.6646 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X63.2403 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X84.4535 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X63.2403 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X65.6903 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.01 ; Set linear advance k factor
G1 X86.9035 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X65.6903 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X66.266 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X87.4792 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X66.266 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X66.8417 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X88.0549 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X66.8417 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X69.2917 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.015 ; Set linear advance k factor
G1 X90.5049 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X69.2917 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X69.8674 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.0806 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X69.8674 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X70.4431 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X91.6563 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X70.4431 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X72.8931 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.02 ; Set linear advance k factor
G1 X94.1063 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X72.8931 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X73.4688 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X94.682 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X73.4688 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X74.0445 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X95.2577 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X74.0445 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X76.4945 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.025 ; Set linear advance k factor
G1 X97.7077 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X76.4945 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X77.0702 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.2834 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X77.0702 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X77.6459 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X98.8591 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X77.6459 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X80.0959 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.03 ; Set linear advance k factor
G1 X101.3091 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X80.0959 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X80.6716 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X101.8848 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X80.6716 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X81.2473 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X102.4605 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X81.2473 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X83.6973 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.035 ; Set linear advance k factor
G1 X104.9105 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X83.6973 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X84.273 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X105.4862 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X84.273 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X84.8487 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X106.0619 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X84.8487 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X87.2987 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.04 ; Set linear advance k factor
G1 X108.5119 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X87.2987 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X87.8744 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.0876 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X87.8744 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X88.4501 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X109.6633 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X88.4501 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X90.9001 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.045 ; Set linear advance k factor
G1 X112.1133 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X90.9001 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X91.4758 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X112.689 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X91.4758 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X92.0515 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X113.2647 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X92.0515 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X94.5015 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.05 ; Set linear advance k factor
G1 X115.7147 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X94.5015 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X95.0771 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.2904 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X95.0771 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X95.6528 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X116.8661 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X95.6528 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X98.1028 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.055 ; Set linear advance k factor
G1 X119.3161 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X98.1028 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X98.6785 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.8917 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X98.6785 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X99.2542 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.4674 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X99.2542 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X101.7042 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.06 ; Set linear advance k factor
G1 X122.9174 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X101.7042 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X102.2799 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X123.4931 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X102.2799 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X102.8556 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X124.0688 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X102.8556 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X105.3056 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.065 ; Set linear advance k factor
G1 X126.5188 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X105.3056 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X105.8813 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.0945 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X105.8813 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X106.457 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X127.6702 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X106.457 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X108.907 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.07 ; Set linear advance k factor
G1 X130.1202 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X108.907 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X109.4827 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.6959 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X109.4827 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X110.0584 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X131.2716 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X110.0584 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X112.5084 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.075 ; Set linear advance k factor
G1 X133.7216 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X112.5084 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X113.0841 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.2973 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X113.0841 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X113.6598 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X134.873 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X113.6598 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X116.1098 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
M900 K0.08 ; Set linear advance k factor
G1 X137.323 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X116.1098 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X116.6855 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X137.8987 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X116.6855 Y115.4332 E0.99515 F1800 ; Print pattern wall
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X117.2612 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X138.4744 Y94.22 E0.99515 F1800 ; Print pattern wall
G1 X117.2612 Y115.4332 E0.99515 F1800 ; Print pattern wall
M900 K0 ; Set linear advance k factor back to start value
G1 E-0.5 F2100 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 Z5.85 F7200 ; Z raise
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
M107    ; Turn off fan
;
; End G-code
;
M501 ; Load settings from EEPROM (to restore previous values)
;
; FINISH
;
