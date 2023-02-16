execute store result score $gamerule demi_previousvalue run gamerule sendCommandFeedback
execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback false

execute at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run tag @e[tag=demi_selected,sort=nearest,limit=1] add modify
#Value modification goes here

data modify entity @e[tag=modify,limit=1] glow_color_override set value 170

#

execute at @e[tag=modify,limit=1] run function demi:modifier/settingsmenu
tag @e remove modify