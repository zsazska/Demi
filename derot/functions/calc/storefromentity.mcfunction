summon minecraft:block_display ~ ~ ~ {Tags:["storex"],transformation:{translation:[-0.5f,-0.5f,-0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["storey"],transformation:{translation:[-0.5f,-0.5f,-0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["storez"],transformation:{translation:[-0.5f,-0.5f,-0.5f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}}

data modify entity @e[tag=storex,limit=1] transformation.right_rotation set from storage minecraft:derot RotationTemp.X
data modify entity @e[tag=storey,limit=1] transformation.right_rotation set from storage minecraft:derot RotationTemp.Y
data modify entity @e[tag=storez,limit=1] transformation.right_rotation set from storage minecraft:derot RotationTemp.Z

data modify storage derot Quaternions.X set from entity @e[tag=storex,limit=1] transformation.right_rotation
data modify storage derot Quaternions.Y set from entity @e[tag=storey,limit=1] transformation.right_rotation
data modify storage derot Quaternions.Z set from entity @e[tag=storez,limit=1] transformation.right_rotation

kill @e[tag=storex]
kill @e[tag=storey]
kill @e[tag=storez]