; homey.g
; called to home the Y axis
;

G91               ; relative positioning
if move.axes[2].homed
	G1 Z5 F600

G1 H1 Y255 F1200  ; move quickly to Y axis endstop and stop there (first pass)
G1 Y-4 F6000      ; go back a few mm
G1 H1 Y8 F100     ; move slowly to Y axis endstop once more (second pass)

G90               ; absolute positioning

G0 Y{move.axes[1].max -20} F{move.axes[1].speed}