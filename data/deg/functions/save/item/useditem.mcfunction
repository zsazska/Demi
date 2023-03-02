execute if score @s deg_save_state matches 4 run function deg:save/checkforoffhanditem

execute if score @s deg_save_state matches 1..3 run scoreboard players set @s deg_raycast 50
execute if score @s deg_save_state matches 1..3 at @s anchored eyes run function deg:save/item/raycast
