execute store result score $gamerule demi_previousvalue run gamerule sendCommandFeedback
execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback false

execute at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run tag @e[tag=demi_selected,sort=nearest,limit=1] add modify
#Value modification goes here
execute as @e[tag=modify,limit=1] if data entity @s brightness store result score @s demi_previousvalue run data get entity @s brightness.block 1
execute as @e[tag=modify,limit=1] if data entity @s brightness if score @s demi_previousvalue matches 1.. run scoreboard players remove @s demi_previousvalue 1
execute as @e[tag=modify,limit=1] if data entity @s brightness store result entity @s brightness.block int 1 run scoreboard players get @s demi_previousvalue

execute as @e[tag=modify,limit=1] unless data entity @s brightness run data merge entity @s {brightness:{sky:15,block:15}}

#
execute at @e[tag=modify,limit=1] run function demi:modifier/settingsmenu
tag @e remove modify