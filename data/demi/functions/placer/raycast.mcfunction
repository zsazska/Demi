scoreboard players remove @s raycast_duration 1

execute unless block ~ ~ ~ air run function demi:placer/hitblock
execute if block ~ ~ ~ air if score @s raycast_duration matches 1.. positioned ^ ^ ^0.1 run function demi:placer/raycast