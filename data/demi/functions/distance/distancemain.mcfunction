scoreboard players operation $compare demi_id = @s demi_id

execute as @a if score @s demi_id = $compare demi_id run tag @s add getdist
execute as @e[type=#demi:display_entities] if score @s demi_id = $compare demi_id run tag @s add affected


execute as @a[tag=getdist] store result score $temp distance_x run data get entity @s Pos[0] 100
execute as @a[tag=getdist] store result score $temp distance_y run data get entity @s Pos[1] 100
execute as @a[tag=getdist] store result score $temp distance_z run data get entity @s Pos[2] 100

execute store result score @s distance_x run data get entity @s Pos[0] 100
execute store result score @s distance_y run data get entity @s Pos[1] 100
execute store result score @s distance_z run data get entity @s Pos[2] 100

scoreboard players operation @s distance_x -= $temp distance_x
scoreboard players operation @s distance_y -= $temp distance_y
scoreboard players operation @s distance_z -= $temp distance_z

scoreboard players operation @s distance_x *= $-1 distance_x
scoreboard players operation @s distance_y *= $-1 distance_x
scoreboard players operation @s distance_z *= $-1 distance_x

execute if entity @e[tag=affected,tag=selectedaxis,tag=xaxis] run scoreboard players set $axis demi_selected 1
execute if entity @e[tag=affected,tag=selectedaxis,tag=yaxis] run scoreboard players set $axis demi_selected 2
execute if entity @e[tag=affected,tag=selectedaxis,tag=zaxis] run scoreboard players set $axis demi_selected 3

function demi:distance/modifyvalues


execute as @e[tag=affected,tag=!axisdisplay] at @s run function demi:transformations/no_interpolation


tag @e remove affected
tag @a remove getdist