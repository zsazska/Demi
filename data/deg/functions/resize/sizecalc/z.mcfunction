scoreboard players operation @s scale_z = @s default_scale_z
scoreboard players operation @s scale_z *= $temp resize_z
scoreboard players operation @s scale_z /= $100 resize_x

execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get @s scale_z

scoreboard players operation @s translation_z = @s default_translation_z
scoreboard players operation @s translation_z *= $temp resize_z
scoreboard players operation @s translation_z /= $100 resize_x

execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get @s translation_z