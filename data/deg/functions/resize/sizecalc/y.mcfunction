scoreboard players operation @s scale_y = @s default_scale_y
scoreboard players operation @s scale_y *= $temp resize_y
scoreboard players operation @s scale_y /= $100 resize_x

execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get @s scale_y

scoreboard players operation @s translation_y = @s default_translation_y
scoreboard players operation @s translation_y *= $temp resize_y
scoreboard players operation @s translation_y /= $100 resize_x

execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get @s translation_y

