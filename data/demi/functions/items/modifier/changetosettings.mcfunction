execute as @e[tag=demi_selected] if score @p demi_id = @s demi_id at @s as @e[tag=axisdisplay] if score @s demi_id = @e[type=#demi:display_entities,sort=nearest,limit=1] demi_id run kill @s
item modify entity @s weapon.mainhand demi:changetosettings
tag @s add changedmode