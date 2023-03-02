execute if score @s selector_1_x > @s selector_2_x run function deg:selector/swapvalues/x
execute if score @s selector_1_y > @s selector_2_y run function deg:selector/swapvalues/y
execute if score @s selector_1_z > @s selector_2_z run function deg:selector/swapvalues/z

tag @s add selector_player
scoreboard players operation $temp deg_id = @s deg_id

execute as @e[type=#deg:display_entities] if score @s deg_id = $temp deg_id run tag @s remove deg_selected
execute as @e[type=#deg:display_entities] if score @s deg_id = $temp deg_id run scoreboard players set @s deg_id 0

execute as @e[type=#deg:display_entities,tag=!deg_selected] if score @s deg_id matches 0 run function deg:selector/isinselection


scoreboard players reset @s selector_1_x
scoreboard players reset @s selector_1_y
scoreboard players reset @s selector_1_z
scoreboard players reset @s selector_2_x
scoreboard players reset @s selector_2_y
scoreboard players reset @s selector_2_z

tag @s remove selector_player