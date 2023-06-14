scoreboard players set @s raycastduration 50

execute if score @s bdcmode matches 1..2 anchored eyes run function btbd:item/raycast

execute if score @s bdcmode matches 3.. run function btbd:convert/beginconversion

scoreboard players add @s bdcmode 1