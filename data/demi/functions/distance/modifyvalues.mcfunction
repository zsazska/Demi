execute if score $axis demi_selected matches 1 if entity @s[tag=scale] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] scale_x = @s distance_x
execute if score $axis demi_selected matches 2 if entity @s[tag=scale] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] scale_y = @s distance_y
execute if score $axis demi_selected matches 3 if entity @s[tag=scale] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] scale_z = @s distance_z

execute if score $axis demi_selected matches 1 if entity @s[tag=translation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] translation_x = @s distance_x
execute if score $axis demi_selected matches 2 if entity @s[tag=translation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] translation_y = @s distance_y
execute if score $axis demi_selected matches 3 if entity @s[tag=translation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] translation_z = @s distance_z

execute if score $axis demi_selected matches 1 if entity @s[tag=leftrotation] run scoreboard players operation @s distance_x /= $5 distance_x
execute if score $axis demi_selected matches 2 if entity @s[tag=leftrotation] run scoreboard players operation @s distance_y /= $5 distance_x
execute if score $axis demi_selected matches 3 if entity @s[tag=leftrotation] run scoreboard players operation @s distance_z /= $5 distance_x
execute if score $axis demi_selected matches 1 if entity @s[tag=leftrotation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] left_rotation_x = @s distance_x
execute if score $axis demi_selected matches 2 if entity @s[tag=leftrotation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] left_rotation_y = @s distance_y
execute if score $axis demi_selected matches 3 if entity @s[tag=leftrotation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] left_rotation_z = @s distance_z

execute if score $axis demi_selected matches 1 if entity @s[tag=rightrotation] run scoreboard players operation @s distance_x /= $5 distance_x
execute if score $axis demi_selected matches 2 if entity @s[tag=rightrotation] run scoreboard players operation @s distance_y /= $5 distance_x
execute if score $axis demi_selected matches 3 if entity @s[tag=rightrotation] run scoreboard players operation @s distance_z /= $5 distance_x
execute if score $axis demi_selected matches 1 if entity @s[tag=rightrotation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] right_rotation_x = @s distance_x
execute if score $axis demi_selected matches 2 if entity @s[tag=rightrotation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] right_rotation_y = @s distance_y
execute if score $axis demi_selected matches 3 if entity @s[tag=rightrotation] run scoreboard players operation @e[tag=affected,tag=!axisdisplay] right_rotation_z = @s distance_z


execute if score $axis demi_selected matches 1 if entity @s[tag=position] run scoreboard players operation @s new_pos_x = @s old_pos_x
execute if score $axis demi_selected matches 2 if entity @s[tag=position] run scoreboard players operation @s new_pos_y = @s old_pos_y
execute if score $axis demi_selected matches 3 if entity @s[tag=position] run scoreboard players operation @s new_pos_z = @s old_pos_z
execute if score $axis demi_selected matches 1 if entity @s[tag=position] run scoreboard players operation @s new_pos_x += @s distance_x
execute if score $axis demi_selected matches 2 if entity @s[tag=position] run scoreboard players operation @s new_pos_y += @s distance_y
execute if score $axis demi_selected matches 3 if entity @s[tag=position] run scoreboard players operation @s new_pos_z += @s distance_z
execute if score $axis demi_selected matches 1 if entity @s[tag=position] store result entity @e[tag=affected,limit=1] Pos[0] double 0.01 run scoreboard players get @s new_pos_x
execute if score $axis demi_selected matches 2 if entity @s[tag=position] store result entity @e[tag=affected,limit=1] Pos[1] double 0.01 run scoreboard players get @s new_pos_y
execute if score $axis demi_selected matches 3 if entity @s[tag=position] store result entity @e[tag=affected,limit=1] Pos[2] double 0.01 run scoreboard players get @s new_pos_z
execute if entity @s[tag=position] at @e[tag=affected,tag=!axisdisplay,limit=1] run tp @e[tag=affected,tag=axisdisplay,tag=xaxis] ~0.5 ~ ~
execute if entity @s[tag=position] at @e[tag=affected,tag=!axisdisplay,limit=1] run tp @e[tag=affected,tag=axisdisplay,tag=yaxis] ~ ~0.5 ~
execute if entity @s[tag=position] at @e[tag=affected,tag=!axisdisplay,limit=1] run tp @e[tag=affected,tag=axisdisplay,tag=zaxis] ~ ~ ~0.5