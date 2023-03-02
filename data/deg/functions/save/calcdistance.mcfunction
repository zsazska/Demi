execute store result score $x new_translation run data get entity @s transformation.translation[0] -100
execute store result score $y new_translation run data get entity @s transformation.translation[1] -100
execute store result score $z new_translation run data get entity @s transformation.translation[2] -100

execute store result score @s dentity_x run data get entity @s Pos[0] 100
execute store result score @s dentity_y run data get entity @s Pos[1] 100
execute store result score @s dentity_z run data get entity @s Pos[2] 100

scoreboard players operation $entity origin_x = $temp origin_x
scoreboard players operation $entity origin_y = $temp origin_y
scoreboard players operation $entity origin_z = $temp origin_z

scoreboard players operation $entity origin_x -= @s dentity_x
scoreboard players operation $entity origin_y -= @s dentity_y
scoreboard players operation $entity origin_z -= @s dentity_z

scoreboard players operation $x new_translation += $entity origin_x
scoreboard players operation $y new_translation += $entity origin_y
scoreboard players operation $z new_translation += $entity origin_z