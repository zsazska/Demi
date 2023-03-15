#Id
execute as @a[tag=!gotdegid] run function deg:getid

execute as @e[type=#deg:display_entities] unless score @s deg_id = @s deg_id run scoreboard players set @s deg_id 0
#

execute as @a at @e[type=#deg:display_entities,tag=deg_selected] if score @s deg_id = @e[type=#deg:display_entities,tag=deg_selected,limit=1] deg_id run particle dust 0.98 0.882 0 1 ~ ~ ~ 0 0 0 0 1 force @s



#

kill @e[type=#deg:display_entities,tag=demi_grouped,predicate=!deg:riding]

#Loader

execute as @a[scores={deg_rc=1..},predicate=deg:holdingloader,predicate=deg:sneaking] run function deg:load/item/checkforoffhanditem
execute as @a[scores={deg_rc=1..},predicate=deg:holdingloaderwithdata,predicate=!deg:sneaking] run function deg:load/item/placegroup

#Saver Instructions

execute as @a[predicate=deg:holdingloader] run title @s actionbar [{"text":"Sneak + right click to load a group","color":"aqua"}]
execute as @a[predicate=deg:holdingloaderwithdata] run title @s actionbar [{"text":"Right click to place the group","color":"aqua"}]

#Saver

execute as @a unless score @s deg_save_state = @s deg_save_state run scoreboard players set @s deg_save_state 0
execute as @a[predicate=deg:holdinggroupsaver,scores={deg_save_state=0}] run scoreboard players set @s deg_save_state 1
execute as @a[scores={deg_rc=1..},predicate=deg:holdinggroupsaver] run function deg:save/item/useditem
execute as @a[scores={deg_save_state=1..3},predicate=deg:groupsaverinoffhand] at @s run function deg:save/item/useditemalt

execute as @a[predicate=deg:groupsaverinoffhand] run function deg:save/item/swapitems

execute as @a[predicate=!deg:holdinggroupsaver,scores={deg_save_state=1..}] run function deg:selector/unselect

#Saver Instructions

execute as @a[scores={deg_save_state=1}] run title @s actionbar [{"text":"Right click to set the 1st corner. Press ","color":"green"},{"keybind":"key.swapOffhand"},{"text":" to set at your position. Drop to cancel"}]
execute as @a[scores={deg_save_state=2}] run title @s actionbar [{"text":"Right click to set the 2nd corner. Press ","color":"green"},{"keybind":"key.swapOffhand"},{"text":" to set at your position. Drop to cancel"}]
execute as @a[scores={deg_save_state=3}] run title @s actionbar [{"text":"Right click to set origin. Press ","color":"green"},{"keybind":"key.swapOffhand"},{"text":" to set at your position. Drop to cancel"}]
execute as @a[scores={deg_save_state=4}] run title @s actionbar [{"text":"Right click to save group. Drop to cancel ","color":"green"}]

execute as @e[type=item,nbt={Item:{tag:{GroupSaver:1b}}}] run data modify entity @s PickupDelay set value 0

#
scoreboard players set @a deg_rc 0
#

execute as @e[tag=demi_group] unless score @s resize_x matches 0 run function deg:resize/resizex
execute as @e[tag=demi_group] unless score @s resize_y matches 0 run function deg:resize/resizey
execute as @e[tag=demi_group] unless score @s resize_z matches 0 run function deg:resize/resizez
