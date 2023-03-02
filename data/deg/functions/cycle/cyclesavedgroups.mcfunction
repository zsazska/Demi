#Cycles deg SavedGroups ($save deg_listnum)-1 times

scoreboard players remove $save deg_listnum 1

execute if score $save deg_listnum matches 1.. run data modify storage deg SavedGroups append from storage deg SavedGroups[0]
execute if score $save deg_listnum matches 1.. run data remove storage deg SavedGroups[0]

execute if score $save deg_listnum matches 1.. run function deg:cycle/cyclesavedgroups