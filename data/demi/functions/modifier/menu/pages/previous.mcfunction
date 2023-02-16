execute store result score $gamerule demi_previousvalue run gamerule sendCommandFeedback
execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback false

execute at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run tag @e[tag=demi_selected,sort=nearest,limit=1] add modify
#Value modification goes here
execute if score @s demi_page matches 2.. run scoreboard players remove @s demi_page 1

#
execute at @e[tag=modify,limit=1] run function demi:modifier/settingsmenu
tag @e remove modify