scoreboard players operation @s scale_x = @s default_scale_x
scoreboard players operation @s scale_x *= $temp resize_x
scoreboard players operation @s scale_x /= $100 resize_x

execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get @s scale_x

scoreboard players operation @s translation_x = @s default_translation_x
scoreboard players operation @s translation_x *= $temp resize_x
scoreboard players operation @s translation_x /= $100 resize_x

execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get @s translation_x