scoreboard players add $save deg_listnum 1
execute store result score $save deg_compare run data modify storage deg SaveGroupTemp[0].id set from storage deg SaveTemp.id

execute if score $save deg_compare matches 0 run scoreboard players set $save deg_exists 1
execute if score $save deg_compare matches 0 run data modify storage deg SaveGroupTemp set value []

data remove storage deg SaveGroupTemp[0]

execute unless data storage deg {SaveGroupTemp:[]} run function deg:save/checkifgroupexists