execute align xyz run summon text_display ~ ~ ~ {Tags:["newdisplay"]}
data modify entity @e[tag=newdisplay,limit=1] text set from entity @s Inventory[{Slot:-106b}].tag.display.Name
tag @e remove newdisplay