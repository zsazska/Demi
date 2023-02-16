execute store result score $gamerule demi_previousvalue run gamerule sendCommandFeedback
execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback false

execute at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run tag @e[tag=demi_selected,sort=nearest,limit=1] add modify
#Value modification goes here

execute as @e[tag=modify,limit=1] at @s if entity @s[type=block_display] run summon block_display ~ ~ ~ {Tags:["duplicate","gotdefaultscores"]}
execute as @e[tag=modify,limit=1] at @s if entity @s[type=item_display] run summon item_display ~ ~ ~ {Tags:["duplicate","gotdefaultscores"]}
execute as @e[tag=modify,limit=1] at @s if entity @s[type=text_display] run summon text_display ~ ~ ~ {Tags:["duplicate","gotdefaultscores"]}

execute as @e[tag=modify,limit=1] run function demi:modifier/menu/entity_actions/copy

playsound block.note_block.pling master @s ~ ~ ~ 1 2

tag @e remove duplicate

#

execute at @e[tag=modify,limit=1] run function demi:modifier/settingsmenu
tag @e remove modify