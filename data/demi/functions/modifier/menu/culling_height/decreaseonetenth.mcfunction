execute store result score $gamerule demi_previousvalue run gamerule sendCommandFeedback
execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback false

execute at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run tag @e[tag=demi_selected,sort=nearest,limit=1] add modify
#Value modification goes here
execute as @e[tag=modify,limit=1] store result score @s demi_previousvalue run data get entity @s height 10
execute as @e[tag=modify,limit=1] run scoreboard players remove @s demi_previousvalue 1
execute as @e[tag=modify,limit=1] store result entity @s height float 0.1 run scoreboard players get @s demi_previousvalue

#
execute at @e[tag=modify,limit=1] run function demi:modifier/settingsmenu
tag @e remove modify