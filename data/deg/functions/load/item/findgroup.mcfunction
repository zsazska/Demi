execute store result score $load deg_compare run data modify storage deg ItemLoadTemp[0].id set from storage deg LoadedID

execute if score $load deg_compare matches 0 run function deg:load/item/getloaddata
execute if score $load deg_compare matches 1 run data remove storage deg ItemLoadTemp[0]
execute unless data storage deg {ItemLoadTemp:[]} run function deg:load/item/findgroup