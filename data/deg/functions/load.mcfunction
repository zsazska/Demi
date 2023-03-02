scoreboard objectives add deg_id dummy
execute unless score $index deg_id = $index deg_id run scoreboard players set $index deg_id 0


scoreboard objectives add selector_1_x dummy
scoreboard objectives add selector_2_x dummy
scoreboard objectives add selector_1_y dummy
scoreboard objectives add selector_2_y dummy
scoreboard objectives add selector_1_z dummy
scoreboard objectives add selector_2_z dummy

scoreboard objectives add dentity_x dummy
scoreboard objectives add dentity_y dummy
scoreboard objectives add dentity_z dummy

scoreboard objectives add inrange dummy

scoreboard objectives add origin_x dummy
scoreboard objectives add origin_y dummy
scoreboard objectives add origin_z dummy

scoreboard objectives add new_translation dummy

scoreboard objectives add deg_x_rot dummy
scoreboard objectives add deg_x_rot_prev dummy
scoreboard objectives add deg_y_rot dummy
scoreboard objectives add deg_y_rot_prev dummy

scoreboard objectives add deg_rc minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add deg_raycast dummy

execute unless data storage deg SavedGroups run data modify storage deg SavedGroups set value [{}]

scoreboard objectives add deg_exists dummy
scoreboard objectives add deg_listnum dummy
scoreboard objectives add deg_compare dummy

scoreboard objectives add deg_save_state dummy

scoreboard objectives add deg_coordinate_display dummy

scoreboard players set $100 deg_coordinate_display 100

scoreboard objectives add default_translation_x dummy
scoreboard objectives add default_translation_y dummy
scoreboard objectives add default_translation_z dummy

scoreboard objectives add default_scale_x dummy
scoreboard objectives add default_scale_y dummy
scoreboard objectives add default_scale_z dummy

scoreboard objectives add resize_x dummy
scoreboard objectives add resize_y dummy
scoreboard objectives add resize_z dummy

scoreboard players set $100 resize_x 100