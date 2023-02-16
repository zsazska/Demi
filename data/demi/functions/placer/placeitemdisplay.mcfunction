execute align xyz run summon item_display ~ ~ ~ {Tags:["newdisplay"]}
data modify entity @e[tag=newdisplay,limit=1] item set from entity @s Inventory[{Slot:-106b}]
tag @e remove newdisplay