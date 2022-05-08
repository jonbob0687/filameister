;G28 ;Home
G90
M106 P2 S1
G1 Z15.0 F600 ;Move the platform to 15mm
G0 F6000 X0 Y0
G1 Z2.0 F300
M83 ;relative extrusion mode
G92 E0
G1 F150 E6
G1 F200 Z4 E20
G92 E0
M83 ;relative extrusion mode
G0 F6000 X30 Y30
