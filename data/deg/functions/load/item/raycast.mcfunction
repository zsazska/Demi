scoreboard players remove @s deg_raycast 1

execute unless block ~ ~ ~ air positioned ^ ^ ^-0.1 run function deg:load/item/hitblock
execute if block ~ ~ ~ air if score @s deg_raycast matches 1.. positioned ^ ^ ^0.1 run function deg:load/item/raycast