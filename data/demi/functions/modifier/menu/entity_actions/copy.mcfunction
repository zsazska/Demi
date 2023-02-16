data modify entity @e[tag=duplicate,limit=1] transformation set from entity @s transformation
data modify entity @e[tag=duplicate,limit=1] billboard set from entity @s billboard
data modify entity @e[tag=duplicate,limit=1] brightness set from entity @s brightness
data modify entity @e[tag=duplicate,limit=1] view_range set from entity @s view_range
data modify entity @e[tag=duplicate,limit=1] shadow_radius set from entity @s shadow_radius
data modify entity @e[tag=duplicate,limit=1] shadow_strength set from entity @s shadow_strength
data modify entity @e[tag=duplicate,limit=1] width set from entity @s width
data modify entity @e[tag=duplicate,limit=1] height set from entity @s height
data modify entity @e[tag=duplicate,limit=1] glow_color_override set from entity @s glow_color_override

execute if entity @s[type=block_display] run data modify entity @e[tag=duplicate,limit=1] block_state.Name set from entity @s block_state.Name


execute if entity @s[type=item_display] run data modify entity @e[tag=duplicate,limit=1] item set from entity @s item
execute if entity @s[type=item_display] run data modify entity @e[tag=duplicate,limit=1] item_display set from entity @s item_display

execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] text set from entity @s text
execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] line_width set from entity @s line_width
execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] text_opacity set from entity @s text_opacity
execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] background set from entity @s background
execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] default_background set from entity @s default_background
execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] shadow set from entity @s shadow
execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] see_through set from entity @s see_through
execute if entity @s[type=text_display] run data modify entity @e[tag=duplicate,limit=1] alignment set from entity @s alignment
execute if entity @s[type=text_display] run scoreboard players operation @e[tag=duplicate,limit=1] background_alpha = @s background_alpha

scoreboard players operation @e[tag=duplicate] left_rotation_x = @s left_rotation_x
scoreboard players operation @e[tag=duplicate] left_rotation_y = @s left_rotation_y
scoreboard players operation @e[tag=duplicate] left_rotation_z = @s left_rotation_z

scoreboard players operation @e[tag=duplicate] right_rotation_x = @s right_rotation_x
scoreboard players operation @e[tag=duplicate] right_rotation_y = @s right_rotation_y
scoreboard players operation @e[tag=duplicate] right_rotation_z = @s right_rotation_z

scoreboard players operation @e[tag=duplicate] scale_x = @s scale_x
scoreboard players operation @e[tag=duplicate] scale_y = @s scale_y
scoreboard players operation @e[tag=duplicate] scale_z = @s scale_z

scoreboard players operation @e[tag=duplicate] translation_x = @s translation_x
scoreboard players operation @e[tag=duplicate] translation_y = @s translation_y
scoreboard players operation @e[tag=duplicate] translation_z = @s translation_z

scoreboard players operation @e[tag=duplicate] interpolation_duration = @s interpolation_duration

