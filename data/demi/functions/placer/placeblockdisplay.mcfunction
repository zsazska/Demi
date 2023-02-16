setblock ~ ~ ~ air
execute align xyz run summon block_display ~ ~ ~ {Tags:["newdisplay"]}
data modify entity @e[tag=newdisplay,limit=1] block_state.Name set from entity @s Inventory[{Slot:-106b}].id
tag @e remove newdisplay