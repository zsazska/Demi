execute if entity @s[tag=!changedmode] if predicate demi:selectormode run function demi:items/modifier/changetoscale
execute if entity @s[tag=!changedmode] if predicate demi:scalemode run function demi:items/modifier/changetotranslate
execute if entity @s[tag=!changedmode] if predicate demi:translationmode run function demi:items/modifier/changetoleftrotation
execute if entity @s[tag=!changedmode] if predicate demi:leftrotationmode run function demi:items/modifier/changetorightrotation
execute if entity @s[tag=!changedmode] if predicate demi:rightrotationmode run function demi:items/modifier/changetoposition
execute if entity @s[tag=!changedmode] if predicate demi:positionmode run function demi:items/modifier/changetosettings
execute if entity @s[tag=!changedmode] if predicate demi:settingsmode run function demi:items/modifier/changetoselector

execute as @e[tag=distancecalculator] if score @s demi_id = @p demi_id run kill @s

execute if entity @s[tag=openedmenu] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tag @s remove openedmenu

tag @s remove changedmode