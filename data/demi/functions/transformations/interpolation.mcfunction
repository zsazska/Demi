function derot:rotate_right

function derot:rotate_left

execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get @s scale_x
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get @s scale_y
execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get @s scale_z

execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get @s translation_x
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get @s translation_y
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get @s translation_z

execute store result entity @s start_interpolation int 1 run scoreboard players get @s interpolation_delay
execute store result entity @s interpolation_duration int 1 run scoreboard players get @s interpolation_duration