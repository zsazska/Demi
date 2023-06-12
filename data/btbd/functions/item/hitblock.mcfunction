summon marker ~ ~ ~ {Tags:["posgetter"]}

#1st Corner
execute if score @s bdcmode matches 1 store result score @s bdcx1 run data get entity @e[tag=posgetter,limit=1] Pos[0] 1
execute if score @s bdcmode matches 1 store result score @s bdcy1 run data get entity @e[tag=posgetter,limit=1] Pos[1] 1
execute if score @s bdcmode matches 1 store result score @s bdcz1 run data get entity @e[tag=posgetter,limit=1] Pos[2] 1
execute if score @s bdcmode matches 1 run tellraw @s [{"text": "Set the 1st corner to ","color": "light_purple"},{"score":{"name": "@s","objective": "bdcx1"}},{"text": " "},{"score":{"name": "@s","objective": "bdcy1"}},{"text": " "},{"score":{"name": "@s","objective": "bdcz1"}},{"text": " "}]
#2nd Corner
execute if score @s bdcmode matches 2 store result score @s bdcx2 run data get entity @e[tag=posgetter,limit=1] Pos[0] 1
execute if score @s bdcmode matches 2 store result score @s bdcy2 run data get entity @e[tag=posgetter,limit=1] Pos[1] 1
execute if score @s bdcmode matches 2 store result score @s bdcz2 run data get entity @e[tag=posgetter,limit=1] Pos[2] 1
execute if score @s bdcmode matches 2 run tellraw @s [{"text": "Set the 2nd corner to ","color": "light_purple"},{"score":{"name": "@s","objective": "bdcx2"}},{"text": " "},{"score":{"name": "@s","objective": "bdcy2"}},{"text": " "},{"score":{"name": "@s","objective": "bdcz2"}},{"text": " "}]
#

kill @e[type=marker,tag=posgetter]