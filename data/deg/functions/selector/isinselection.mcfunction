execute store result score @s dentity_x run data get entity @s Pos[0]
execute store result score @s dentity_y run data get entity @s Pos[1]
execute store result score @s dentity_z run data get entity @s Pos[2]

scoreboard players set @s inrange 0

execute if score @s dentity_x >= @a[tag=selector_player,limit=1] selector_1_x if score @s dentity_x <= @a[tag=selector_player,limit=1] selector_2_x run scoreboard players add @s inrange 1
execute if score @s inrange matches 1 if score @s dentity_y >= @a[tag=selector_player,limit=1] selector_1_y if score @s dentity_y <= @a[tag=selector_player,limit=1] selector_2_y run scoreboard players add @s inrange 1
execute if score @s inrange matches 2 if score @s dentity_z >= @a[tag=selector_player,limit=1] selector_1_z if score @s dentity_z <= @a[tag=selector_player,limit=1] selector_2_z run scoreboard players add @s inrange 1
execute if score @s inrange matches 3 run tag @s add deg_selected

execute if entity @s[tag=deg_selected] run scoreboard players operation @s deg_id = $temp deg_id