scoreboard players set @s raycast_duration 0

execute if predicate demi:selectormode run function demi:modifier/selectentity

execute unless predicate demi:selectormode run function demi:modifier/selectaxis

