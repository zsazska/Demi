execute store result score $gamerule demi_previousvalue run gamerule sendCommandFeedback
execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback false

execute at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run tag @e[tag=demi_selected,sort=nearest,limit=1] add modify
#Value modification goes here

execute store result score $temp demi_previousvalue run data get entity @e[tag=modify,limit=1] background
scoreboard players remove $temp demi_previousvalue 16777216
execute store result entity @e[tag=modify,limit=1] background int 1 run scoreboard players get $temp demi_previousvalue
scoreboard players remove @e[tag=modify,limit=1] background_alpha 1
execute if score @e[tag=modify,limit=1] background_alpha matches ..-1 run scoreboard players set @e[tag=modify,limit=1] background_alpha 255


#

execute at @e[tag=modify,limit=1] run function demi:modifier/settingsmenu
tag @e remove modify