execute at @s as @e[tag=demi_selected] if score @s demi_id = @p demi_id run tag @s add setvalue

scoreboard players operation @e[tag=setvalue] translation_x = @s demi_set_translation_x
execute as @e[tag=setvalue] at @s run function demi:transformations/no_interpolation

scoreboard players set @s demi_set_translation_x 0
tag @e remove setvalue