execute store result score $gamerule demi_previousvalue run gamerule sendCommandFeedback
execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback false

execute at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run tag @e[tag=demi_selected,sort=nearest,limit=1] add modify
#Value modification goes here
scoreboard players operation $temp background_alpha = @e[tag=modify,limit=1] background_alpha
execute if score $temp background_alpha matches 128.. run function demi:modifier/menu/background/converttosigned

scoreboard players operation $temp background_alpha *= $alphavalue background_alpha
scoreboard players add $temp background_alpha 5592575

execute store result entity @e[tag=modify,limit=1] background int 1 run scoreboard players get $temp background_alpha

#

execute at @e[tag=modify,limit=1] run function demi:modifier/settingsmenu
tag @e remove modify