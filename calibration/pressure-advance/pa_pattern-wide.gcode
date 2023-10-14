
; ### Ellis' Pressure Advance / Linear Advance Calibration Tool ###
;
; Original Marlin linear advance calibration tool by Sineos [https://github.com/Sineos]
; Heavily modified/rewritten by Andrew Ellis [https://github.com/AndrewEllis93]
;
; -------------------------------------------
; Generated: Sat Oct 14 2023 20:30:45 GMT+0200 (Central European Summer Time)
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
;  - Firmware Retraction: true
;  - Z Hop Enable: true
;  - Z Hop Height: 0.1mm
;
; First Layer Settings:
;  - First Layer Height: 0.25 mm
;  - First Layer Printing Speed: 30 mm/s
;  - First Layer Fan Speed: 0%
;  - Anchor Option: anchor_frame
;  - Anchor Frame Perimeters: 4
;  - Anchor Line Width: 140 %
;
; Print Settings:
;  - Line Width: 112.5 %
;  - Layer Count: 4
;  - Layer Height: 0.2 mm
;  - Print Speed: 100 mm/s
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
;  - LA End Value: 0.3
;  - LA Increment: 0.02
;  - Show on LCD: true
;  - Number Tab: true
;  - No Leading Zeroes: false
;
; Start / End G-code:
;  - Hotend Temp: 200C
;  - Bed Temp: 60C
;  - Don't Add G28: false
;  - Don't Add Heating G-Codes: false
;
; Calculated Values:
;  - Print Size X: 81.12 mm
;  - Print Size Y: 53.99 mm
;  - Number of Patterns to Print: 16
;  - LA Values: 0, 0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18, 0.2, 0.22, 0.24, 0.26, 0.28, 0.3
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
G10 ; Retract
G0 Z5 F7200 ; Z raise
G0 X59.4424 Y73.0068 F7200 ; Move to start position
G0 Z0.25 F7200 ; Move to start layer height
G11 ; Un-retract
M900 K0 ; Set linear advance k factor to start value
M117 LA 0
G1 X59.4424 Y115.4332 E2.1882 F1800 ; Draw perimeter (up)
G1 X140.5576 Y115.4332 E4.18363 F1800 ; Draw perimeter (right)
G1 X140.5576 Y73.0068 E2.1882 F1800 ; Draw perimeter (down)
G1 X59.4424 Y73.0068 E4.18363 F1800 ; Draw perimeter (left)
G0 X59.9487 Y73.5131 F7200 ; Step inwards to print next perimeter
G1 X59.9487 Y114.9269 E2.13597 F1800 ; Draw perimeter (up)
G1 X140.0513 Y114.9269 E4.13139 F1800 ; Draw perimeter (right)
G1 X140.0513 Y73.5131 E2.13597 F1800 ; Draw perimeter (down)
G1 X59.9487 Y73.5131 E4.13139 F1800 ; Draw perimeter (left)
G0 X60.4551 Y74.0195 F7200 ; Step inwards to print next perimeter
G1 X60.4551 Y114.4205 E2.08374 F1800 ; Draw perimeter (up)
G1 X139.5449 Y114.4205 E4.07916 F1800 ; Draw perimeter (right)
G1 X139.5449 Y74.0195 E2.08374 F1800 ; Draw perimeter (down)
G1 X60.4551 Y74.0195 E4.07916 F1800 ; Draw perimeter (left)
G0 X60.9614 Y74.5258 F7200 ; Step inwards to print next perimeter
G1 X60.9614 Y113.9142 E2.0315 F1800 ; Draw perimeter (up)
G1 X139.0386 Y113.9142 E4.02693 F1800 ; Draw perimeter (right)
G1 X139.0386 Y74.5258 E2.0315 F1800 ; Draw perimeter (down)
G1 X60.9614 Y74.5258 E4.02693 F1800 ; Draw perimeter (left)
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X59.4424 Y115.9396 F7200 ; Move to box start
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X59.4424 Y127.4459 E0.59346 F1800 ; Draw perimeter (up)
G1 X120.0955 Y127.4459 E3.12826 F1800 ; Draw perimeter (right)
G1 X120.0955 Y115.9396 E0.59346 F1800 ; Draw perimeter (down)
G1 X59.4424 Y115.9396 E3.12826 F1800 ; Draw perimeter (left)
G0 X59.9487 Y116.4459 F7200 ; Step inwards to print next perimeter
G1 X59.9487 Y126.9396 E0.54122 F1800 ; Draw perimeter (up)
G1 X119.5891 Y126.9396 E3.07603 F1800 ; Draw perimeter (right)
G1 X119.5891 Y116.4459 E0.54122 F1800 ; Draw perimeter (down)
G1 X59.9487 Y116.4459 E3.07603 F1800 ; Draw perimeter (left)
G0 X60.4551 Y116.9523 F7200 ; Step inwards to print next perimeter
G1 X60.4551 Y126.4332 E0.48899 F1800 ; Draw perimeter (up)
G1 X119.0828 Y126.4332 E3.0238 F1800 ; Draw perimeter (right)
G1 X119.0828 Y116.9523 E0.48899 F1800 ; Draw perimeter (down)
G1 X60.4551 Y116.9523 E3.0238 F1800 ; Draw perimeter (left)
G0 X60.9614 Y117.4586 F7200 ; Step inwards to print next perimeter
G1 X60.9614 Y125.9269 E0.43676 F1800 ; Draw perimeter (up)
G1 X118.5764 Y125.9269 E2.97157 F1800 ; Draw perimeter (right)
G1 X118.5764 Y117.4586 E0.43676 F1800 ; Draw perimeter (down)
G1 X60.9614 Y117.4586 E2.97157 F1800 ; Draw perimeter (left)
G0 X61.3348 Y117.8319 F7200 ; Move to fill start
G0 X62.0509 Y117.8319 F7200 ; Move
G1 X61.3348 Y118.548 E0.05223 F1800 ; Fill
G0 X61.3348 Y119.2641 F7200 ; Move
G1 X62.767 Y117.8319 E0.10446 F1800 ; Fill
G0 X63.483 Y117.8319 F7200 ; Move
G1 X61.3348 Y119.9802 E0.15669 F1800 ; Fill
G0 X61.3348 Y120.6963 F7200 ; Move
G1 X64.1991 Y117.8319 E0.20893 F1800 ; Fill
G0 X64.9152 Y117.8319 F7200 ; Move
G1 X61.3348 Y121.4124 E0.26116 F1800 ; Fill
G0 X61.3348 Y122.1285 F7200 ; Move
G1 X65.6313 Y117.8319 E0.31339 F1800 ; Fill
G0 X66.3474 Y117.8319 F7200 ; Move
G1 X61.3348 Y122.8445 E0.36562 F1800 ; Fill
G0 X61.3348 Y123.5606 F7200 ; Move
G1 X67.0635 Y117.8319 E0.41785 F1800 ; Fill
G0 X67.7796 Y117.8319 F7200 ; Move
G1 X61.3348 Y124.2767 E0.47008 F1800 ; Fill
G0 X61.3348 Y124.9928 F7200 ; Move
G1 X68.4956 Y117.8319 E0.52231 F1800 ; Fill
G0 X69.2117 Y117.8319 F7200 ; Move
G1 X61.4901 Y125.5535 E0.56321 F1800 ; Fill
G0 X62.2062 Y125.5535 F7200 ; Move
G1 X69.9278 Y117.8319 E0.56321 F1800 ; Fill
G0 X70.6439 Y117.8319 F7200 ; Move
G1 X62.9223 Y125.5535 E0.56321 F1800 ; Fill
G0 X63.6384 Y125.5535 F7200 ; Move
G1 X71.36 Y117.8319 E0.56321 F1800 ; Fill
G0 X72.0761 Y117.8319 F7200 ; Move
G1 X64.3545 Y125.5535 E0.56321 F1800 ; Fill
G0 X65.0706 Y125.5535 F7200 ; Move
G1 X72.7922 Y117.8319 E0.56321 F1800 ; Fill
G0 X73.5083 Y117.8319 F7200 ; Move
G1 X65.7867 Y125.5535 E0.56321 F1800 ; Fill
G0 X66.5028 Y125.5535 F7200 ; Move
G1 X74.2243 Y117.8319 E0.56321 F1800 ; Fill
G0 X74.9404 Y117.8319 F7200 ; Move
G1 X67.2188 Y125.5535 E0.56321 F1800 ; Fill
G0 X67.9349 Y125.5535 F7200 ; Move
G1 X75.6565 Y117.8319 E0.56321 F1800 ; Fill
G0 X76.3726 Y117.8319 F7200 ; Move
G1 X68.651 Y125.5535 E0.56321 F1800 ; Fill
G0 X69.3671 Y125.5535 F7200 ; Move
G1 X77.0887 Y117.8319 E0.56321 F1800 ; Fill
G0 X77.8048 Y117.8319 F7200 ; Move
G1 X70.0832 Y125.5535 E0.56321 F1800 ; Fill
G0 X70.7993 Y125.5535 F7200 ; Move
G1 X78.5209 Y117.8319 E0.56321 F1800 ; Fill
G0 X79.2369 Y117.8319 F7200 ; Move
G1 X71.5154 Y125.5535 E0.56321 F1800 ; Fill
G0 X72.2314 Y125.5535 F7200 ; Move
G1 X79.953 Y117.8319 E0.56321 F1800 ; Fill
G0 X80.6691 Y117.8319 F7200 ; Move
G1 X72.9475 Y125.5535 E0.56321 F1800 ; Fill
G0 X73.6636 Y125.5535 F7200 ; Move
G1 X81.3852 Y117.8319 E0.56321 F1800 ; Fill
G0 X82.1013 Y117.8319 F7200 ; Move
G1 X74.3797 Y125.5535 E0.56321 F1800 ; Fill
G0 X75.0958 Y125.5535 F7200 ; Move
G1 X82.8174 Y117.8319 E0.56321 F1800 ; Fill
G0 X83.5335 Y117.8319 F7200 ; Move
G1 X75.8119 Y125.5535 E0.56321 F1800 ; Fill
G0 X76.528 Y125.5535 F7200 ; Move
G1 X84.2495 Y117.8319 E0.56321 F1800 ; Fill
G0 X84.9656 Y117.8319 F7200 ; Move
G1 X77.244 Y125.5535 E0.56321 F1800 ; Fill
G0 X77.9601 Y125.5535 F7200 ; Move
G1 X85.6817 Y117.8319 E0.56321 F1800 ; Fill
G0 X86.3978 Y117.8319 F7200 ; Move
G1 X78.6762 Y125.5535 E0.56321 F1800 ; Fill
G0 X79.3923 Y125.5535 F7200 ; Move
G1 X87.1139 Y117.8319 E0.56321 F1800 ; Fill
G0 X87.83 Y117.8319 F7200 ; Move
G1 X80.1084 Y125.5535 E0.56321 F1800 ; Fill
G0 X80.8245 Y125.5535 F7200 ; Move
G1 X88.5461 Y117.8319 E0.56321 F1800 ; Fill
G0 X89.2622 Y117.8319 F7200 ; Move
G1 X81.5406 Y125.5535 E0.56321 F1800 ; Fill
G0 X82.2567 Y125.5535 F7200 ; Move
G1 X89.9782 Y117.8319 E0.56321 F1800 ; Fill
G0 X90.6943 Y117.8319 F7200 ; Move
G1 X82.9727 Y125.5535 E0.56321 F1800 ; Fill
G0 X83.6888 Y125.5535 F7200 ; Move
G1 X91.4104 Y117.8319 E0.56321 F1800 ; Fill
G0 X92.1265 Y117.8319 F7200 ; Move
G1 X84.4049 Y125.5535 E0.56321 F1800 ; Fill
G0 X85.121 Y125.5535 F7200 ; Move
G1 X92.8426 Y117.8319 E0.56321 F1800 ; Fill
G0 X93.5587 Y117.8319 F7200 ; Move
G1 X85.8371 Y125.5535 E0.56321 F1800 ; Fill
G0 X86.5532 Y125.5535 F7200 ; Move
G1 X94.2748 Y117.8319 E0.56321 F1800 ; Fill
G0 X94.9908 Y117.8319 F7200 ; Move
G1 X87.2693 Y125.5535 E0.56321 F1800 ; Fill
G0 X87.9853 Y125.5535 F7200 ; Move
G1 X95.7069 Y117.8319 E0.56321 F1800 ; Fill
G0 X96.423 Y117.8319 F7200 ; Move
G1 X88.7014 Y125.5535 E0.56321 F1800 ; Fill
G0 X89.4175 Y125.5535 F7200 ; Move
G1 X97.1391 Y117.8319 E0.56321 F1800 ; Fill
G0 X97.8552 Y117.8319 F7200 ; Move
G1 X90.1336 Y125.5535 E0.56321 F1800 ; Fill
G0 X90.8497 Y125.5535 F7200 ; Move
G1 X98.5713 Y117.8319 E0.56321 F1800 ; Fill
G0 X99.2874 Y117.8319 F7200 ; Move
G1 X91.5658 Y125.5535 E0.56321 F1800 ; Fill
G0 X92.2819 Y125.5535 F7200 ; Move
G1 X100.0034 Y117.8319 E0.56321 F1800 ; Fill
G0 X100.7195 Y117.8319 F7200 ; Move
G1 X92.9979 Y125.5535 E0.56321 F1800 ; Fill
G0 X93.714 Y125.5535 F7200 ; Move
G1 X101.4356 Y117.8319 E0.56321 F1800 ; Fill
G0 X102.1517 Y117.8319 F7200 ; Move
G1 X94.4301 Y125.5535 E0.56321 F1800 ; Fill
G0 X95.1462 Y125.5535 F7200 ; Move
G1 X102.8678 Y117.8319 E0.56321 F1800 ; Fill
G0 X103.5839 Y117.8319 F7200 ; Move
G1 X95.8623 Y125.5535 E0.56321 F1800 ; Fill
G0 X96.5784 Y125.5535 F7200 ; Move
G1 X104.3 Y117.8319 E0.56321 F1800 ; Fill
G0 X105.0161 Y117.8319 F7200 ; Move
G1 X97.2945 Y125.5535 E0.56321 F1800 ; Fill
G0 X98.0106 Y125.5535 F7200 ; Move
G1 X105.7321 Y117.8319 E0.56321 F1800 ; Fill
G0 X106.4482 Y117.8319 F7200 ; Move
G1 X98.7266 Y125.5535 E0.56321 F1800 ; Fill
G0 X99.4427 Y125.5535 F7200 ; Move
G1 X107.1643 Y117.8319 E0.56321 F1800 ; Fill
G0 X107.8804 Y117.8319 F7200 ; Move
G1 X100.1588 Y125.5535 E0.56321 F1800 ; Fill
G0 X100.8749 Y125.5535 F7200 ; Move
G1 X108.5965 Y117.8319 E0.56321 F1800 ; Fill
G0 X109.3126 Y117.8319 F7200 ; Move
G1 X101.591 Y125.5535 E0.56321 F1800 ; Fill
G0 X102.3071 Y125.5535 F7200 ; Move
G1 X110.0287 Y117.8319 E0.56321 F1800 ; Fill
G0 X110.7447 Y117.8319 F7200 ; Move
G1 X103.0232 Y125.5535 E0.56321 F1800 ; Fill
G0 X103.7392 Y125.5535 F7200 ; Move
G1 X111.4608 Y117.8319 E0.56321 F1800 ; Fill
G0 X112.1769 Y117.8319 F7200 ; Move
G1 X104.4553 Y125.5535 E0.56321 F1800 ; Fill
G0 X105.1714 Y125.5535 F7200 ; Move
G1 X112.893 Y117.8319 E0.56321 F1800 ; Fill
G0 X113.6091 Y117.8319 F7200 ; Move
G1 X105.8875 Y125.5535 E0.56321 F1800 ; Fill
G0 X106.6036 Y125.5535 F7200 ; Move
G1 X114.3252 Y117.8319 E0.56321 F1800 ; Fill
G0 X115.0413 Y117.8319 F7200 ; Move
G1 X107.3197 Y125.5535 E0.56321 F1800 ; Fill
G0 X108.0358 Y125.5535 F7200 ; Move
G1 X115.7573 Y117.8319 E0.56321 F1800 ; Fill
G0 X116.4734 Y117.8319 F7200 ; Move
G1 X108.7518 Y125.5535 E0.56321 F1800 ; Fill
G0 X109.4679 Y125.5535 F7200 ; Move
G1 X117.1895 Y117.8319 E0.56321 F1800 ; Fill
G0 X117.9056 Y117.8319 F7200 ; Move
G1 X110.184 Y125.5535 E0.56321 F1800 ; Fill
G0 X110.9001 Y125.5535 F7200 ; Move
G1 X118.2031 Y118.2505 E0.53268 F1800 ; Fill
G0 X118.2031 Y118.9666 F7200 ; Move
G1 X111.6162 Y125.5535 E0.48045 F1800 ; Fill
G0 X112.3323 Y125.5535 F7200 ; Move
G1 X118.2031 Y119.6827 E0.42822 F1800 ; Fill
G0 X118.2031 Y120.3988 F7200 ; Move
G1 X113.0484 Y125.5535 E0.37599 F1800 ; Fill
G0 X113.7645 Y125.5535 F7200 ; Move
G1 X118.2031 Y121.1149 E0.32375 F1800 ; Fill
G0 X118.2031 Y121.831 F7200 ; Move
G1 X114.4805 Y125.5535 E0.27152 F1800 ; Fill
G0 X115.1966 Y125.5535 F7200 ; Move
G1 X118.2031 Y122.5471 E0.21929 F1800 ; Fill
G0 X118.2031 Y123.2631 F7200 ; Move
G1 X115.9127 Y125.5535 E0.16706 F1800 ; Fill
G0 X116.6288 Y125.5535 F7200 ; Move
G1 X118.2031 Y123.9792 E0.11483 F1800 ; Fill
G0 X118.2031 Y124.6953 F7200 ; Move
G1 X117.3449 Y125.5535 E0.0626 F1800 ; Fill
G0 X118.061 Y125.5535 F7200 ; Move
G1 X118.2031 Y125.4114 E0.01037 F1800 ; Fill
G0 Z0.25 F7200 ; Move to layer height
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X64.0391 Y74.8992 F7200 ; Move to pattern start

G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0 ; Set linear advance k factor
M117 LA 0
G1 X83.3599 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X64.0391 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X64.6148 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X83.9356 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X64.6148 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X65.1905 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X84.5113 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X65.1905 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X67.6405 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.02 ; Set linear advance k factor
M117 LA 0.02
G1 X86.9613 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X67.6405 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X68.2162 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X87.537 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X68.2162 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X68.7919 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X88.1127 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X68.7919 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X71.2419 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.04 ; Set linear advance k factor
M117 LA 0.04
G1 X90.5627 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X71.2419 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X71.8176 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.1384 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X71.8176 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X72.3933 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.7141 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X72.3933 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X74.8433 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.06 ; Set linear advance k factor
M117 LA 0.06
G1 X94.1641 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X74.8433 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X75.419 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X94.7398 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X75.419 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X75.9947 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X95.3155 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X75.9947 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X78.4447 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.08 ; Set linear advance k factor
M117 LA 0.08
G1 X97.7655 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X78.4447 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X79.0204 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.3412 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X79.0204 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X79.5961 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.9169 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X79.5961 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X82.0461 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.1 ; Set linear advance k factor
M117 LA 0.1
G1 X101.3669 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X82.0461 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X82.6218 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X101.9426 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X82.6218 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X83.1975 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X102.5183 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X83.1975 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X85.6475 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.12 ; Set linear advance k factor
M117 LA 0.12
G1 X104.9683 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X85.6475 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X86.2232 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X105.544 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X86.2232 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X86.7988 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X106.1197 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X86.7988 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X89.2488 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.14 ; Set linear advance k factor
M117 LA 0.14
G1 X108.5697 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X89.2488 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X89.8245 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.1454 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X89.8245 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X90.4002 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.7211 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X90.4002 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X92.8502 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.16 ; Set linear advance k factor
M117 LA 0.16
G1 X112.1711 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X92.8502 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X93.4259 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X112.7468 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X93.4259 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X94.0016 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X113.3225 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X94.0016 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X96.4516 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.18 ; Set linear advance k factor
M117 LA 0.18
G1 X115.7725 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X96.4516 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X97.0273 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.3482 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X97.0273 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X97.603 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.9239 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X97.603 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X100.053 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.2 ; Set linear advance k factor
M117 LA 0.2
G1 X119.3739 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X100.053 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X100.6287 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X119.9496 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X100.6287 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X101.2044 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X120.5253 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X101.2044 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X103.6544 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.22 ; Set linear advance k factor
M117 LA 0.22
G1 X122.9753 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X103.6544 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X104.2301 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X123.5509 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X104.2301 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X104.8058 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X124.1266 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X104.8058 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X107.2558 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.24 ; Set linear advance k factor
M117 LA 0.24
G1 X126.5766 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X107.2558 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X107.8315 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.1523 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X107.8315 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X108.4072 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.728 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X108.4072 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X110.8572 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.26 ; Set linear advance k factor
M117 LA 0.26
G1 X130.178 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X110.8572 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X111.4329 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X130.7537 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X111.4329 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X112.0086 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X131.3294 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X112.0086 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X114.4586 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.28 ; Set linear advance k factor
M117 LA 0.28
G1 X133.7794 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X114.4586 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X115.0343 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.3551 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X115.0343 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X115.61 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.9308 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X115.61 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X118.06 Y74.8992 F7200 ; Move to next pattern
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X137.3808 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X118.06 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X118.6357 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X137.9565 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X118.6357 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X119.2114 Y74.8992 F7200 ; Move to start next pattern wall
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
G1 X138.5322 Y94.22 E1.10311 F1800 ; Print pattern wall
G1 X119.2114 Y113.5408 E1.10311 F1800 ; Print pattern wall
G10 ; Retract
G1 Z0.35 F7200 ; Z hop
G0 X64.0391 Y74.8992 F7200 ; Move back to start position
G1 Z0.25 F7200 ; Z hop return
G11 ; Un-retract
M106 S255 ; Set fan speed
G0 Z0.45 F7200 ; Move to layer height
M900 K0 ; Set linear advance k factor to start value for numbering
M117 LA 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X60.7224 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X62.7224 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X64.7224 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X64.7224 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X62.7224 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X60.7224 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X60.7224 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X67.9252 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X69.9252 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X71.9252 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X71.9252 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X69.9252 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X67.9252 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X67.9252 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X71.9252 Y119.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X71.1752 Y119.8832 E0.02488 F1800 ; Glyph: .
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X67.9252 Y120.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X69.9252 Y120.8832 E0.06634 F1800 ; Glyph: 0
G1 X71.9252 Y120.8832 E0.06634 F1800 ; Glyph: 0
G1 X71.9252 Y122.8832 E0.06634 F1800 ; Glyph: 0
G1 X69.9252 Y122.8832 E0.06634 F1800 ; Glyph: 0
G1 X67.9252 Y122.8832 E0.06634 F1800 ; Glyph: 0
G1 X67.9252 Y120.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X67.9252 Y125.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X69.9252 Y125.8832 E0.06634 F1800 ; Glyph: 4
G1 X71.9252 Y125.8832 E0.06634 F1800 ; Glyph: 4
G0 X69.9252 Y125.8832 F7200 ; Move
G1 X69.9252 Y123.8832 E0.06634 F1800 ; Glyph: 4
G1 X67.9252 Y123.8832 E0.06634 F1800 ; Glyph: 4
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X75.128 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X77.128 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X79.128 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X79.128 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X77.128 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X75.128 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X75.128 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X79.128 Y119.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X78.378 Y119.8832 E0.02488 F1800 ; Glyph: .
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X75.128 Y120.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X77.128 Y120.8832 E0.06634 F1800 ; Glyph: 0
G1 X79.128 Y120.8832 E0.06634 F1800 ; Glyph: 0
G1 X79.128 Y122.8832 E0.06634 F1800 ; Glyph: 0
G1 X77.128 Y122.8832 E0.06634 F1800 ; Glyph: 0
G1 X75.128 Y122.8832 E0.06634 F1800 ; Glyph: 0
G1 X75.128 Y120.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X75.128 Y123.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X77.128 Y123.8832 E0.06634 F1800 ; Glyph: 8
G1 X79.128 Y123.8832 E0.06634 F1800 ; Glyph: 8
G1 X79.128 Y125.8832 E0.06634 F1800 ; Glyph: 8
G1 X77.128 Y125.8832 E0.06634 F1800 ; Glyph: 8
G1 X75.128 Y125.8832 E0.06634 F1800 ; Glyph: 8
G1 X75.128 Y123.8832 E0.06634 F1800 ; Glyph: 8
G0 X77.128 Y123.8832 F7200 ; Move
G1 X77.128 Y125.8832 E0.06634 F1800 ; Glyph: 8
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X82.3308 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X84.3308 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X86.3308 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X86.3308 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X84.3308 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X82.3308 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X82.3308 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X86.3308 Y119.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X85.5808 Y119.8832 E0.02488 F1800 ; Glyph: .
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X82.3308 Y120.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X84.3308 Y120.8832 E0.06634 F1800 ; Glyph: 1
G1 X86.3308 Y120.8832 E0.06634 F1800 ; Glyph: 1
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X82.3308 Y121.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X82.3308 Y123.8832 E0.06634 F1800 ; Glyph: 2
G1 X84.3308 Y123.8832 E0.06634 F1800 ; Glyph: 2
G1 X84.3308 Y121.8832 E0.06634 F1800 ; Glyph: 2
G1 X86.3308 Y121.8832 E0.06634 F1800 ; Glyph: 2
G1 X86.3308 Y123.8832 E0.06634 F1800 ; Glyph: 2
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X89.5336 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.5336 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X93.5336 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X93.5336 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X91.5336 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X89.5336 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X89.5336 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X93.5336 Y119.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X92.7836 Y119.8832 E0.02488 F1800 ; Glyph: .
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X89.5336 Y120.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.5336 Y120.8832 E0.06634 F1800 ; Glyph: 1
G1 X93.5336 Y120.8832 E0.06634 F1800 ; Glyph: 1
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X89.5336 Y123.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X89.5336 Y121.8832 E0.06634 F1800 ; Glyph: 6
G1 X91.5336 Y121.8832 E0.06634 F1800 ; Glyph: 6
G1 X93.5336 Y121.8832 E0.06634 F1800 ; Glyph: 6
G1 X93.5336 Y123.8832 E0.06634 F1800 ; Glyph: 6
G1 X91.5336 Y123.8832 E0.06634 F1800 ; Glyph: 6
G1 X91.5336 Y121.8832 E0.06634 F1800 ; Glyph: 6
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X96.7364 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.7364 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X100.7364 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X100.7364 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X98.7364 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X96.7364 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X96.7364 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X100.7364 Y119.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X99.9864 Y119.8832 E0.02488 F1800 ; Glyph: .
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X96.7364 Y120.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X96.7364 Y122.8832 E0.06634 F1800 ; Glyph: 2
G1 X98.7364 Y122.8832 E0.06634 F1800 ; Glyph: 2
G1 X98.7364 Y120.8832 E0.06634 F1800 ; Glyph: 2
G1 X100.7364 Y120.8832 E0.06634 F1800 ; Glyph: 2
G1 X100.7364 Y122.8832 E0.06634 F1800 ; Glyph: 2
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X103.9391 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X105.9391 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X107.9391 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X107.9391 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X105.9391 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X103.9391 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X103.9391 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X107.9391 Y119.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X107.1891 Y119.8832 E0.02488 F1800 ; Glyph: .
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X103.9391 Y120.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X103.9391 Y122.8832 E0.06634 F1800 ; Glyph: 2
G1 X105.9391 Y122.8832 E0.06634 F1800 ; Glyph: 2
G1 X105.9391 Y120.8832 E0.06634 F1800 ; Glyph: 2
G1 X107.9391 Y120.8832 E0.06634 F1800 ; Glyph: 2
G1 X107.9391 Y122.8832 E0.06634 F1800 ; Glyph: 2
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X103.9391 Y125.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X105.9391 Y125.8832 E0.06634 F1800 ; Glyph: 4
G1 X107.9391 Y125.8832 E0.06634 F1800 ; Glyph: 4
G0 X105.9391 Y125.8832 F7200 ; Move
G1 X105.9391 Y123.8832 E0.06634 F1800 ; Glyph: 4
G1 X103.9391 Y123.8832 E0.06634 F1800 ; Glyph: 4
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X111.1419 Y116.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X113.1419 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X115.1419 Y116.8832 E0.06634 F1800 ; Glyph: 0
G1 X115.1419 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X113.1419 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X111.1419 Y118.8832 E0.06634 F1800 ; Glyph: 0
G1 X111.1419 Y116.8832 E0.06634 F1800 ; Glyph: 0
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X115.1419 Y119.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X114.3919 Y119.8832 E0.02488 F1800 ; Glyph: .
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X111.1419 Y120.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X111.1419 Y122.8832 E0.06634 F1800 ; Glyph: 2
G1 X113.1419 Y122.8832 E0.06634 F1800 ; Glyph: 2
G1 X113.1419 Y120.8832 E0.06634 F1800 ; Glyph: 2
G1 X115.1419 Y120.8832 E0.06634 F1800 ; Glyph: 2
G1 X115.1419 Y122.8832 E0.06634 F1800 ; Glyph: 2
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X111.1419 Y123.8832 F7200 ; Move
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X113.1419 Y123.8832 E0.06634 F1800 ; Glyph: 8
G1 X115.1419 Y123.8832 E0.06634 F1800 ; Glyph: 8
G1 X115.1419 Y125.8832 E0.06634 F1800 ; Glyph: 8
G1 X113.1419 Y125.8832 E0.06634 F1800 ; Glyph: 8
G1 X111.1419 Y125.8832 E0.06634 F1800 ; Glyph: 8
G1 X111.1419 Y123.8832 E0.06634 F1800 ; Glyph: 8
G0 X113.1419 Y123.8832 F7200 ; Move
G1 X113.1419 Y125.8832 E0.06634 F1800 ; Glyph: 8
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X62.1467 Y73.0068 F7200 ; Move to pattern start

G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0 ; Set linear advance k factor
M117 LA 0
G1 X83.3599 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X62.1467 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X62.7224 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X83.9356 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X62.7224 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X63.2981 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X84.5113 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X63.2981 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X65.7481 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.02 ; Set linear advance k factor
M117 LA 0.02
G1 X86.9613 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X65.7481 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X66.3238 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X87.537 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X66.3238 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X66.8995 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X88.1127 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X66.8995 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X69.3495 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.04 ; Set linear advance k factor
M117 LA 0.04
G1 X90.5627 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X69.3495 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X69.9252 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.1384 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X69.9252 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X70.5009 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.7141 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X70.5009 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X72.9509 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.06 ; Set linear advance k factor
M117 LA 0.06
G1 X94.1641 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X72.9509 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X73.5266 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X94.7398 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X73.5266 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X74.1023 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X95.3155 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X74.1023 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X76.5523 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.08 ; Set linear advance k factor
M117 LA 0.08
G1 X97.7655 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X76.5523 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X77.128 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.3412 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X77.128 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X77.7037 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.9169 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X77.7037 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X80.1537 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.1 ; Set linear advance k factor
M117 LA 0.1
G1 X101.3669 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X80.1537 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X80.7294 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X101.9426 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X80.7294 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X81.3051 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X102.5183 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X81.3051 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X83.7551 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.12 ; Set linear advance k factor
M117 LA 0.12
G1 X104.9683 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X83.7551 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X84.3308 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X105.544 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X84.3308 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X84.9065 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X106.1197 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X84.9065 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X87.3565 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.14 ; Set linear advance k factor
M117 LA 0.14
G1 X108.5697 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X87.3565 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X87.9322 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.1454 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X87.9322 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X88.5079 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.7211 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X88.5079 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X90.9579 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.16 ; Set linear advance k factor
M117 LA 0.16
G1 X112.1711 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X90.9579 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X91.5336 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X112.7468 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X91.5336 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X92.1093 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X113.3225 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X92.1093 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X94.5593 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.18 ; Set linear advance k factor
M117 LA 0.18
G1 X115.7725 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X94.5593 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X95.135 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.3482 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X95.135 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X95.7107 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.9239 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X95.7107 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X98.1607 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.2 ; Set linear advance k factor
M117 LA 0.2
G1 X119.3739 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X98.1607 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X98.7364 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X119.9496 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X98.7364 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X99.312 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X120.5253 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X99.312 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X101.762 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.22 ; Set linear advance k factor
M117 LA 0.22
G1 X122.9753 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X101.762 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X102.3377 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X123.5509 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X102.3377 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X102.9134 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X124.1266 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X102.9134 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X105.3634 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.24 ; Set linear advance k factor
M117 LA 0.24
G1 X126.5766 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X105.3634 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X105.9391 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.1523 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X105.9391 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X106.5148 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.728 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X106.5148 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X108.9648 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.26 ; Set linear advance k factor
M117 LA 0.26
G1 X130.178 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X108.9648 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X109.5405 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X130.7537 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X109.5405 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X110.1162 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X131.3294 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X110.1162 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X112.5662 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.28 ; Set linear advance k factor
M117 LA 0.28
G1 X133.7794 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X112.5662 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X113.1419 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.3551 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X113.1419 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X113.7176 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.9308 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X113.7176 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X116.1676 Y73.0068 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X137.3808 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X116.1676 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X116.7433 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X137.9565 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X116.7433 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X117.319 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G1 X138.5322 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X117.319 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.55 F7200 ; Z hop
G0 X62.1467 Y73.0068 F7200 ; Move back to start position
G1 Z0.45 F7200 ; Z hop return
G11 ; Un-retract
G0 Z0.65 F7200 ; Move to layer height
M900 K0 ; Set linear advance k factor
M117 LA 0
G1 X83.3599 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X62.1467 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X62.7224 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X83.9356 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X62.7224 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X63.2981 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X84.5113 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X63.2981 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X65.7481 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.02 ; Set linear advance k factor
M117 LA 0.02
G1 X86.9613 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X65.7481 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X66.3238 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X87.537 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X66.3238 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X66.8995 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X88.1127 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X66.8995 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X69.3495 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.04 ; Set linear advance k factor
M117 LA 0.04
G1 X90.5627 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X69.3495 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X69.9252 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.1384 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X69.9252 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X70.5009 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.7141 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X70.5009 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X72.9509 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.06 ; Set linear advance k factor
M117 LA 0.06
G1 X94.1641 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X72.9509 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X73.5266 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X94.7398 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X73.5266 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X74.1023 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X95.3155 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X74.1023 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X76.5523 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.08 ; Set linear advance k factor
M117 LA 0.08
G1 X97.7655 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X76.5523 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X77.128 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.3412 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X77.128 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X77.7037 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.9169 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X77.7037 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X80.1537 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.1 ; Set linear advance k factor
M117 LA 0.1
G1 X101.3669 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X80.1537 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X80.7294 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X101.9426 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X80.7294 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X81.3051 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X102.5183 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X81.3051 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X83.7551 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.12 ; Set linear advance k factor
M117 LA 0.12
G1 X104.9683 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X83.7551 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X84.3308 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X105.544 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X84.3308 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X84.9065 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X106.1197 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X84.9065 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X87.3565 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.14 ; Set linear advance k factor
M117 LA 0.14
G1 X108.5697 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X87.3565 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X87.9322 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.1454 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X87.9322 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X88.5079 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.7211 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X88.5079 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X90.9579 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.16 ; Set linear advance k factor
M117 LA 0.16
G1 X112.1711 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X90.9579 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X91.5336 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X112.7468 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X91.5336 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X92.1093 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X113.3225 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X92.1093 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X94.5593 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.18 ; Set linear advance k factor
M117 LA 0.18
G1 X115.7725 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X94.5593 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X95.135 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.3482 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X95.135 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X95.7107 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.9239 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X95.7107 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X98.1607 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.2 ; Set linear advance k factor
M117 LA 0.2
G1 X119.3739 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X98.1607 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X98.7364 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X119.9496 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X98.7364 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X99.312 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X120.5253 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X99.312 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X101.762 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.22 ; Set linear advance k factor
M117 LA 0.22
G1 X122.9753 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X101.762 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X102.3377 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X123.5509 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X102.3377 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X102.9134 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X124.1266 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X102.9134 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X105.3634 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.24 ; Set linear advance k factor
M117 LA 0.24
G1 X126.5766 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X105.3634 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X105.9391 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.1523 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X105.9391 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X106.5148 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.728 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X106.5148 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X108.9648 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.26 ; Set linear advance k factor
M117 LA 0.26
G1 X130.178 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X108.9648 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X109.5405 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X130.7537 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X109.5405 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X110.1162 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X131.3294 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X110.1162 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X112.5662 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.28 ; Set linear advance k factor
M117 LA 0.28
G1 X133.7794 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X112.5662 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X113.1419 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.3551 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X113.1419 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X113.7176 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.9308 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X113.7176 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X116.1676 Y73.0068 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X137.3808 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X116.1676 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X116.7433 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X137.9565 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X116.7433 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X117.319 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G1 X138.5322 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X117.319 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.75 F7200 ; Z hop
G0 X62.1467 Y73.0068 F7200 ; Move back to start position
G1 Z0.65 F7200 ; Z hop return
G11 ; Un-retract
G0 Z0.85 F7200 ; Move to layer height
M900 K0 ; Set linear advance k factor
M117 LA 0
G1 X83.3599 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X62.1467 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X62.7224 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X83.9356 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X62.7224 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X63.2981 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X84.5113 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X63.2981 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X65.7481 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.02 ; Set linear advance k factor
M117 LA 0.02
G1 X86.9613 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X65.7481 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X66.3238 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X87.537 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X66.3238 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X66.8995 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X88.1127 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X66.8995 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X69.3495 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.04 ; Set linear advance k factor
M117 LA 0.04
G1 X90.5627 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X69.3495 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X69.9252 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.1384 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X69.9252 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X70.5009 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X91.7141 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X70.5009 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X72.9509 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.06 ; Set linear advance k factor
M117 LA 0.06
G1 X94.1641 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X72.9509 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X73.5266 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X94.7398 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X73.5266 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X74.1023 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X95.3155 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X74.1023 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X76.5523 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.08 ; Set linear advance k factor
M117 LA 0.08
G1 X97.7655 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X76.5523 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X77.128 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.3412 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X77.128 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X77.7037 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X98.9169 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X77.7037 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X80.1537 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.1 ; Set linear advance k factor
M117 LA 0.1
G1 X101.3669 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X80.1537 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X80.7294 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X101.9426 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X80.7294 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X81.3051 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X102.5183 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X81.3051 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X83.7551 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.12 ; Set linear advance k factor
M117 LA 0.12
G1 X104.9683 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X83.7551 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X84.3308 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X105.544 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X84.3308 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X84.9065 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X106.1197 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X84.9065 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X87.3565 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.14 ; Set linear advance k factor
M117 LA 0.14
G1 X108.5697 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X87.3565 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X87.9322 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.1454 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X87.9322 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X88.5079 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X109.7211 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X88.5079 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X90.9579 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.16 ; Set linear advance k factor
M117 LA 0.16
G1 X112.1711 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X90.9579 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X91.5336 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X112.7468 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X91.5336 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X92.1093 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X113.3225 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X92.1093 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X94.5593 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.18 ; Set linear advance k factor
M117 LA 0.18
G1 X115.7725 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X94.5593 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X95.135 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.3482 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X95.135 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X95.7107 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X116.9239 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X95.7107 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X98.1607 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.2 ; Set linear advance k factor
M117 LA 0.2
G1 X119.3739 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X98.1607 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X98.7364 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X119.9496 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X98.7364 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X99.312 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X120.5253 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X99.312 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X101.762 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.22 ; Set linear advance k factor
M117 LA 0.22
G1 X122.9753 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X101.762 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X102.3377 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X123.5509 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X102.3377 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X102.9134 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X124.1266 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X102.9134 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X105.3634 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.24 ; Set linear advance k factor
M117 LA 0.24
G1 X126.5766 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X105.3634 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X105.9391 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.1523 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X105.9391 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X106.5148 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X127.728 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X106.5148 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X108.9648 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.26 ; Set linear advance k factor
M117 LA 0.26
G1 X130.178 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X108.9648 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X109.5405 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X130.7537 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X109.5405 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X110.1162 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X131.3294 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X110.1162 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X112.5662 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.28 ; Set linear advance k factor
M117 LA 0.28
G1 X133.7794 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X112.5662 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X113.1419 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.3551 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X113.1419 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X113.7176 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X134.9308 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X113.7176 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X116.1676 Y73.0068 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
M900 K0.3 ; Set linear advance k factor
M117 LA 0.3
G1 X137.3808 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X116.1676 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X116.7433 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X137.9565 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X116.7433 Y115.4332 E0.99515 F6000 ; Print pattern wall
G10 ; Retract
G1 Z0.95 F7200 ; Z hop
G0 X117.319 Y73.0068 F7200 ; Move to start next pattern wall
G1 Z0.85 F7200 ; Z hop return
G11 ; Un-retract
G1 X138.5322 Y94.22 E0.99515 F6000 ; Print pattern wall
G1 X117.319 Y115.4332 E0.99515 F6000 ; Print pattern wall
M900 K0 ; Set linear advance k factor back to start value
M117 LA 0
G10 ; Retract
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
