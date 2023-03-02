execute if data entity @s Inventory[{Slot:-106b}].tag.display.Name run data modify storage deg ItemLoadTemp set from storage deg SavedGroups
execute if data entity @s Inventory[{Slot:-106b}].tag.display.Name run data modify storage deg LoadedID set from entity @s Inventory[{Slot:-106b}].tag.display.Name
execute if data entity @s Inventory[{Slot:-106b}].tag.display.Name run function deg:load/item/findgroup
execute unless data entity @s Inventory[{Slot:-106b}].tag.display.Name run tellraw @s {"text": "Hold a renamed item in your offhand to load a group","color": "red"}
execute if score $load deg_compare matches 1 run tellraw @s {"text": "This group doesn't exist!","color": "red"}