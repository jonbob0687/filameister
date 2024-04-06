; homez.g
; called to home the Z axis
;
;G1 H2 Z5 F6000   ; lift Z relative to current position
;if !move.axes[0].homed

;Z axis sensors is 7.8mm from bottom hard stop, so this should always work
if(sensors.endstops[2].triggered)
	G91 G1 H2 Z-10

if(sensors.endstops[2].triggered)
	M117 "Error: Z endstop still triggered"
	abort "Error: Z endstop still triggered"

;course/high-speed hunt
G91 G1 H1 Z290 F360  ; relative move Z up until the endstop is triggered

;backoff limit switch
G91 G1 H2 Z-2 F360

;fine/slow-speed hunt
G91 G1 H1 Z10 F24

;Set calibrated Z height to nozzle
G92 Z{279.6-0.5}         ; set Z position to axis maximum (you may want to adjust this)

;reset to absolute coordinates
G90
