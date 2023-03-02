scoreboard players operation $temp deg_id = @s deg_id

execute as @e[type=#deg:display_entities,tag=deg_selected] if score @s deg_id = $temp deg_id run tag @s add removeselection

tag @e[tag=removeselection] remove deg_selected
scoreboard players set @e[tag=removeselection] deg_id 0

tag @e[tag=removeselection] remove removeselection

scoreboard players set @s deg_save_state 0