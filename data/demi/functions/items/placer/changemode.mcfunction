execute if entity @s[tag=!changedmode] if predicate demi:blockmode run function demi:items/placer/changetoitem
execute if entity @s[tag=!changedmode] if predicate demi:itemmode run function demi:items/placer/changetotext
execute if entity @s[tag=!changedmode] if predicate demi:textmode run function demi:items/placer/changetoblock

tag @s remove changedmode