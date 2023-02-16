execute as @e[tag=demi_selected] if score @p demi_id = @s demi_id at @s run function demi:items/modifier/placeaxidisplays
item modify entity @s weapon.mainhand demi:changetoposition
tag @s add changedmode