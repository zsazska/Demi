scoreboard players remove @s raycastduration 1

execute unless block ~ ~ ~ air run function btbd:item/hitblock

execute if score @s raycastduration matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.1 run function btbd:item/raycast