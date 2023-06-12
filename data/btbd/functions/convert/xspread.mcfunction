execute if score @s bdcx2 matches ..-1 run summon marker ~-1 ~ ~ {Tags:["bdconverter"]}
execute if score @s bdcx2 matches 1.. run summon marker ~1 ~ ~ {Tags:["bdconverter"]}

execute if score @s bdcx2 matches ..-1 run scoreboard players add @s bdcx2 1
execute if score @s bdcx2 matches 1.. run scoreboard players remove @s bdcx2 1

execute if score @s bdcx2 matches ..-1 positioned ~-1 ~ ~ run function btbd:convert/xspread
execute if score @s bdcx2 matches 1.. positioned ~1 ~ ~ run function btbd:convert/xspread