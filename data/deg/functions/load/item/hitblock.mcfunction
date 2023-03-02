scoreboard players set @s deg_raycast 0

data modify storage deg LoadTemp set from entity @s SelectedItem.tag.LoadData
function deg:load/loadfromstorage