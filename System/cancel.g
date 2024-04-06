; stop.g
; called when a print is cancelled after a pause.
M104 S0 ;set active extruder to 0C
M106 P2 S0.48 ; duet cooling fan
M140 S0 ;set bed to zero
G90
G01 F1200 Z275
