scoreboard objectives add interpolation_duration dummy
scoreboard objectives add scale_x dummy
scoreboard objectives add scale_y dummy
scoreboard objectives add scale_z dummy
scoreboard objectives add translation_x dummy
scoreboard objectives add translation_y dummy
scoreboard objectives add translation_z dummy

scoreboard objectives add demi_rc minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add raycast_duration dummy

scoreboard objectives add mode_change dummy

scoreboard objectives add demi_id dummy
execute unless score $index demi_id matches 0.. run scoreboard players set $index demi_id 0

scoreboard objectives add distance_x dummy
scoreboard objectives add distance_y dummy
scoreboard objectives add distance_z dummy

scoreboard players set $-1 distance_x -1
scoreboard players set $5 distance_x 5

scoreboard objectives add demi_selected dummy

scoreboard objectives add old_pos_x dummy
scoreboard objectives add old_pos_y dummy
scoreboard objectives add old_pos_z dummy
scoreboard objectives add new_pos_x dummy
scoreboard objectives add new_pos_y dummy
scoreboard objectives add new_pos_z dummy

scoreboard objectives add demi_previousvalue dummy

scoreboard objectives add demi_page dummy

scoreboard objectives add background_alpha dummy
scoreboard players set $alphavalue background_alpha 16777216



scoreboard objectives add demi_set_leftrotation_x trigger
scoreboard objectives add demi_set_leftrotation_y trigger
scoreboard objectives add demi_set_leftrotation_z trigger

scoreboard objectives add demi_set_rightrotation_x trigger
scoreboard objectives add demi_set_rightrotation_y trigger
scoreboard objectives add demi_set_rightrotation_z trigger

scoreboard objectives add demi_set_scale_x trigger
scoreboard objectives add demi_set_scale_y trigger
scoreboard objectives add demi_set_scale_z trigger

scoreboard objectives add demi_set_translation_x trigger
scoreboard objectives add demi_set_translation_y trigger
scoreboard objectives add demi_set_translation_z trigger