execute if score @s deg_save_state matches 1 run function deg:selector/setselector1
execute if score @s deg_save_state matches 2 run function deg:selector/setselector2
execute if score @s deg_save_state matches 3 run function deg:selector/setorigin

scoreboard players add @s deg_save_state 1
