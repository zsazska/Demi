tag @e[type=#demi:display_entities,sort=nearest,limit=1] add demi_selected
data modify entity @e[tag=demi_selected,limit=1] Glowing set value 1b
scoreboard players operation @e[tag=demi_selected,sort=nearest,limit=1] demi_id = @s demi_id