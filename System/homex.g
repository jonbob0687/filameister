; homex.g
; called to home the X axis
;

G91               ; relative positioning
if move.axes[2].homed
	G1 Z5 F600

G1 H1 X-285 F1200 ; move quickly to X axis endstop and stop there (first pass)
G1 X4 F6000       ; go back a few mm
G1 H1 X-285 F100  ; move slowly to X axis endstop once more (second pass)

G90               ; absolute positioning

G0 X{move.axes[0].min + 20} F{move.axes[0].speed}