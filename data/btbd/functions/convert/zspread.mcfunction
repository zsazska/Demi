execute if score @s bdcz2 matches ..-1 as @e[tag=bdconverter,tag=!new] at @s run summon marker ~ ~ ~ {Tags:["bdconverter","new"]}
execute if score @s bdcz2 matches 1.. as @e[tag=bdconverter,tag=!new] at @s run summon marker ~ ~ ~ {Tags:["bdconverter","new"]}

execute if score @s bdcz2 matches ..-1 as @e[tag=bdconverter,tag=!new] at @s run tp @s ~ ~ ~-1
execute if score @s bdcz2 matches 1.. as @e[tag=bdconverter,tag=!new] at @s run tp @s ~ ~ ~1

execute if score @s bdcz2 matches ..-1 run scoreboard players add @s bdcz2 1
execute if score @s bdcz2 matches 1.. run scoreboard players remove @s bdcz2 1

execute if score @s bdcz2 matches ..-1 positioned ~ ~ ~-1 run function btbd:convert/zspread
execute if score @s bdcz2 matches 1.. positioned ~ ~ ~1 run function btbd:convert/zspread