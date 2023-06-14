execute as @e[type=#demi:display_entities,tag=!gotdefaultscores] run function demi:getdefaultscores
execute as @e[tag=demi_group,tag=!gotdefaultscores] run function demi:getdefaultscores

execute as @a[scores={demi_rc=1..},predicate=demi:holdingmodifier] run function demi:modifier/usedmodifier
execute as @a[scores={demi_rc=1..},predicate=demi:holdingplacer,predicate=demi:hasiteminoffhand] run function demi:placer/usedplacer
scoreboard players set @a demi_rc 0

function demi:items/modedisplay

function demi:mode_change/modechangemain
execute as @e[tag=demi_selected] at @s run particle dust 0.376 1 0.353 1 ~ ~ ~ 0 0 0 0 1
execute as @e[type=#demi:display_entities,tag=!demi_selected,tag=!axisdisplay] at @s if entity @a[predicate=demi:selectormode,distance=..15] at @s run particle dust 1 0.486 0.486 1 ~ ~ ~ 0 0 0 0 1 force @a[predicate=demi:selectormode,distance=..15]
execute as @e[tag=xaxis] at @s run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1
execute as @e[tag=yaxis] at @s run particle dust 0.102 1 0 1 ~ ~ ~ 0 0 0 0 1
execute as @e[tag=zaxis] at @s run particle dust 0.051 0 1 1 ~ ~ ~ 0 0 0 0 1

execute as @a unless score @s demi_id = @s demi_id store result score @s demi_id run scoreboard players add $index demi_id 1

execute as @e[tag=distancecalculator] at @s run function demi:distance/distancemain

execute if score $gamerule demi_previousvalue matches 1 run gamerule sendCommandFeedback true
scoreboard players reset $gamerule demi_previousvalue

#Commands

scoreboard players enable @a demi_set_leftrotation_x
scoreboard players enable @a demi_set_leftrotation_y
scoreboard players enable @a demi_set_leftrotation_z

scoreboard players enable @a demi_set_rightrotation_x
scoreboard players enable @a demi_set_rightrotation_y
scoreboard players enable @a demi_set_rightrotation_z

scoreboard players enable @a demi_set_scale_x
scoreboard players enable @a demi_set_scale_y
scoreboard players enable @a demi_set_scale_z

scoreboard players enable @a demi_set_translation_x
scoreboard players enable @a demi_set_translation_y
scoreboard players enable @a demi_set_translation_z


execute as @a unless score @s demi_set_leftrotation_x matches 0 run function demi:commands/leftrotation_x
execute as @a unless score @s demi_set_leftrotation_y matches 0 run function demi:commands/leftrotation_y
execute as @a unless score @s demi_set_leftrotation_z matches 0 run function demi:commands/leftrotation_z

execute as @a unless score @s demi_set_rightrotation_x matches 0 run function demi:commands/rightrotation_x
execute as @a unless score @s demi_set_rightrotation_y matches 0 run function demi:commands/rightrotation_y
execute as @a unless score @s demi_set_rightrotation_z matches 0 run function demi:commands/rightrotation_z

execute as @a unless score @s demi_set_scale_x matches 0 run function demi:commands/scale_x
execute as @a unless score @s demi_set_scale_y matches 0 run function demi:commands/scale_y
execute as @a unless score @s demi_set_scale_z matches 0 run function demi:commands/scale_z

execute as @a unless score @s demi_set_translation_x matches 0 run function demi:commands/translation_x
execute as @a unless score @s demi_set_translation_y matches 0 run function demi:commands/translation_y
execute as @a unless score @s demi_set_translation_z matches 0 run function demi:commands/translation_z