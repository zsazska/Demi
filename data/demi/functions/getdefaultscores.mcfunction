scoreboard players set @s left_rotation_x 0
scoreboard players set @s left_rotation_y 0
scoreboard players set @s left_rotation_z 0
scoreboard players set @s right_rotation_x 0
scoreboard players set @s right_rotation_y 0
scoreboard players set @s right_rotation_z 0
scoreboard players set @s scale_x 100
scoreboard players set @s scale_y 100
scoreboard players set @s scale_z 100
scoreboard players set @s translation_x 0
scoreboard players set @s translation_y 0
scoreboard players set @s translation_z 0
scoreboard players set @s interpolation_duration 60
scoreboard players set @s interpolation_delay 0

execute if entity @s[type=text_display] run scoreboard players set @s background_alpha 64


tag @s add gotdefaultscores