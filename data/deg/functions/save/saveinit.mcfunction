#Save to SaveTemp

scoreboard players operation $temp deg_id = @s deg_id
scoreboard players operation $temp origin_x = @s origin_x
scoreboard players operation $temp origin_y = @s origin_y
scoreboard players operation $temp origin_z = @s origin_z

execute as @e[type=#deg:display_entities,tag=deg_selected] if score @s deg_id = $temp deg_id run tag @s add deg_save

data modify storage deg SaveTemp set value {id:"",entities:[]}

data modify storage deg SaveTemp.id set from entity @s Inventory[{Slot:-106b}].tag.display.Name
execute as @e[type=#deg:display_entities,tag=deg_save,tag=!deg_saved,limit=1] run function deg:save/addtolist

tag @e[type=#deg:display_entities,tag=deg_save] remove deg_save
tag @e[type=#deg:display_entities,tag=deg_saved] remove deg_saved

#Save to group list

data modify storage deg SaveGroupTemp set from storage deg SavedGroups
scoreboard players set $save deg_exists 0
scoreboard players set $save deg_listnum 0
#Returns 0 if the group doesn't exist, 1 if it does and cycle amount-1
function deg:save/checkifgroupexists

#

execute if score $save deg_exists matches 0 run data modify storage deg SavedGroups prepend value {}
execute if score $save deg_exists matches 1 run function deg:cycle/cyclesavedgroups



data modify storage deg SavedGroups[0] set from storage deg SaveTemp

#

tellraw @s [{"text":"Group saved as \"","color":"green"},{"nbt":"SavedGroups[0].id","storage":"deg","interpret":true},{"text":"\""}]

function deg:selector/unselect