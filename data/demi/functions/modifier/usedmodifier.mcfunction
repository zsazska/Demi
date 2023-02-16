scoreboard players set @s raycast_duration 100

execute if predicate demi:selectormode at @s as @e[tag=demi_selected] if score @s demi_id = @p demi_id run scoreboard players set @s demi_id -1
execute if predicate demi:selectormode as @e[tag=demi_selected] run data modify entity @s Glowing set value 0b
execute if predicate demi:selectormode run tag @e[tag=demi_selected] remove demi_selected

execute unless predicate demi:selectormode at @e[tag=axisdisplay] if score @s demi_id = @e[tag=axisdisplay,sort=nearest,limit=1] demi_id run tag @e[tag=axisdisplay,sort=nearest,limit=1] remove selectedaxis
execute unless predicate demi:selectormode at @e[tag=axisdisplay] if score @s demi_id = @e[tag=axisdisplay,sort=nearest,limit=1] demi_id run data modify entity @e[tag=axisdisplay,sort=nearest,limit=1] Glowing set value 0b

execute unless predicate demi:selectormode as @e[tag=distancecalculator] if score @s demi_id = @p demi_id run kill @s

execute unless predicate demi:settingsmode at @s anchored eyes run function demi:modifier/raycast
execute if predicate demi:settingsmode run scoreboard players set @s demi_page 1
execute if predicate demi:settingsmode at @e[tag=demi_selected] if score @s demi_id = @e[tag=demi_selected,sort=nearest,limit=1] demi_id run function demi:modifier/settingsmenu

