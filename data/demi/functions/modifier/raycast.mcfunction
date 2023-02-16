scoreboard players remove @s raycast_duration 1

execute if predicate demi:selectormode if entity @e[type=#demi:display_entities,distance=..0.3,tag=!axisdisplay] run function demi:modifier/hitentity
execute unless predicate demi:selectormode if entity @e[type=#demi:display_entities,distance=..0.3,tag=axisdisplay] run function demi:modifier/hitentity

execute if predicate demi:selectormode unless entity @e[type=#demi:display_entities,distance=..0.3,tag=!axisdisplay] if score @s raycast_duration matches 1.. positioned ^ ^ ^0.1 run function demi:modifier/raycast
execute unless predicate demi:selectormode unless entity @e[type=#demi:display_entities,distance=..0.3,tag=axisdisplay] if score @s raycast_duration matches 1.. positioned ^ ^ ^0.1 run function demi:modifier/raycast

