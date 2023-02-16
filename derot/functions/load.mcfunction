scoreboard objectives add rotation_calc dummy

scoreboard players set $360 rotation_calc 360
scoreboard players set $1000000 rotation_calc 1000000
scoreboard players set $degtorad rotation_calc 57295

scoreboard objectives add rotate_x dummy
scoreboard objectives add rotate_y dummy
scoreboard objectives add rotate_z dummy

scoreboard objectives add left_rotation_x dummy
scoreboard objectives add left_rotation_y dummy
scoreboard objectives add left_rotation_z dummy

scoreboard objectives add right_rotation_x dummy
scoreboard objectives add right_rotation_y dummy
scoreboard objectives add right_rotation_z dummy

data modify storage derot RotationTemplate set value {X:{axis:[1.0f,0.0f,0.0f],angle:0.0f},Y:{axis:[0.0f,1.0f,0.0f],angle:0.0f},Z:{axis:[0.0f,0.0f,1.0f],angle:0.0f}}