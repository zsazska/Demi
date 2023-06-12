scoreboard players set @s deg_raycast 0

function deg:load/item/swapitems

data modify storage deg LoadTemp set from entity @s SelectedItem.tag.LoadData
function deg:load/loadfromstorage