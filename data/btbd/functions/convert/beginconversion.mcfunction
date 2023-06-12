summon marker ~ ~ ~ {Tags:["bdc1"]}


execute store result entity @e[tag=bdc1,limit=1] Pos[0] double 1 run scoreboard players get @s bdcx1
execute store result entity @e[tag=bdc1,limit=1] Pos[1] double 1 run scoreboard players get @s bdcy1
execute store result entity @e[tag=bdc1,limit=1] Pos[2] double 1 run scoreboard players get @s bdcz1

scoreboard players operation @s bdcx2 -= @s bdcx1
scoreboard players operation @s bdcy2 -= @s bdcy1
scoreboard players operation @s bdcz2 -= @s bdcz1

scoreboard players operation @e[tag=bdc1] bdcx2 = @s bdcx2
scoreboard players operation @e[tag=bdc1] bdcy2 = @s bdcy2
scoreboard players operation @e[tag=bdc1] bdcz2 = @s bdcz2

execute as @e[tag=bdc1] at @s run summon marker ~ ~ ~ {Tags:["bdconverter"]}
execute as @e[tag=bdc1] unless score @s bdcx2 matches 0 at @s run function btbd:convert/xspread

execute as @e[tag=bdc1] unless score @s bdcy2 matches 0 run function btbd:convert/yspread

tag @e[tag=bdconverter,tag=new] remove new

execute as @e[tag=bdc1] unless score @s bdcz2 matches 0 at @e[tag=bdconverter] run function btbd:convert/zspread

execute as @e[tag=bdconverter] at @s if block ~ ~ ~ air run kill @s

execute if predicate btbd:keepblocks as @e[tag=bdconverter] at @s run function btbd:convert/convertkeepblocks
execute if predicate btbd:dontkeepblocks as @e[tag=bdconverter] at @s run function btbd:convert/convertdeleteblocks

kill @e[tag=bdconverter]
kill @e[tag=bdc1]