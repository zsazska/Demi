scoreboard players remove @s deg_raycast 1

execute unless block ~ ~ ~ air positioned ^ ^ ^-0.1 run function deg:save/item/hitblock

execute if score @s deg_raycast matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.1 run function deg:save/item/raycast