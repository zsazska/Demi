data modify storage deg ItemLoadCopy set from storage deg ItemLoadTemp
data modify storage deg ItemLoadTemp set value {}
data modify storage deg ItemLoadTemp set from storage deg ItemLoadCopy[0]
data remove storage deg ItemLoadCopy

item modify entity @s weapon.mainhand deg:loadgroup

tellraw @s [{"nbt":"ItemLoadTemp.id","storage":"deg","interpret":true,"color": "light_purple"},{"text":" loaded"}]

data modify storage deg ItemLoadTemp set value []