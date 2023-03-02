data modify storage deg SaveTemp.entities prepend value {type:"",properties:{block_state:{},item:{},text:'',transformation:{},billboard:"",brightness:{},view_range:1.0f,shadow_radius:0.0f,shadow_strength:1.0f,height:0.0f,width:0.0f,glow_color_override:0,item_display:"",line_width:200,text_opacity:0b,background:0,default_bakcground:0b,shadow:0b,see_through:0b,alignment:"",Rotation:[0.0f,0.0f],Lrotation:[0,0,0],Rrotation:[0,0,0]}}

execute if entity @s[type=block_display] run data modify storage deg SaveTemp.entities[0].type set value "block"
execute if entity @s[type=item_display] run data modify storage deg SaveTemp.entities[0].type set value "item"
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].type set value "text"

execute if entity @s[type=block_display] run data modify storage deg SaveTemp.entities[0].properties.block_state set from entity @s block_state
execute if entity @s[type=item_display] run data modify storage deg SaveTemp.entities[0].properties.item set from entity @s item
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.text set from entity @s text

data modify storage deg SaveTemp.entities[0].properties.transformation set from entity @s transformation
data modify storage deg SaveTemp.entities[0].properties.billboard set from entity @s billboard
data modify storage deg SaveTemp.entities[0].properties.brightness set from entity @s brightness
data modify storage deg SaveTemp.entities[0].properties.view_range set from entity @s view_range
data modify storage deg SaveTemp.entities[0].properties.shadow_radius set from entity @s shadow_radius
data modify storage deg SaveTemp.entities[0].properties.shadow_strength set from entity @s shadow_strength
data modify storage deg SaveTemp.entities[0].properties.height set from entity @s height
data modify storage deg SaveTemp.entities[0].properties.width set from entity @s width
data modify storage deg SaveTemp.entities[0].properties.glow_color_override set from entity @s glow_color_override

execute store result storage deg SaveTemp.entities[0].properties.Lrotation[0] int 1 run scoreboard players get @s left_rotation_x
execute store result storage deg SaveTemp.entities[0].properties.Lrotation[1] int 1 run scoreboard players get @s left_rotation_y
execute store result storage deg SaveTemp.entities[0].properties.Lrotation[2] int 1 run scoreboard players get @s left_rotation_z
execute store result storage deg SaveTemp.entities[0].properties.Rrotation[0] int 1 run scoreboard players get @s right_rotation_x
execute store result storage deg SaveTemp.entities[0].properties.Rrotation[1] int 1 run scoreboard players get @s right_rotation_y
execute store result storage deg SaveTemp.entities[0].properties.Rrotation[2] int 1 run scoreboard players get @s right_rotation_z

execute if entity @s[type=item_display] run data modify storage deg SaveTemp.entities[0].properties.item_display set from entity @s item_display

execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.line_width set from entity @s line_width
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.text_opacity set from entity @s text_opacity
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.background set from entity @s background
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.default_background set from entity @s default_background
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.shadow set from entity @s shadow
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.see_through set from entity @s see_through
execute if entity @s[type=text_display] run data modify storage deg SaveTemp.entities[0].properties.alignment set from entity @s alignment


function deg:save/calcdistance
execute store result storage deg SaveTemp.entities[0].properties.transformation.translation[0] float -0.01 run scoreboard players get $x new_translation
execute store result storage deg SaveTemp.entities[0].properties.transformation.translation[1] float -0.01 run scoreboard players get $y new_translation
execute store result storage deg SaveTemp.entities[0].properties.transformation.translation[2] float -0.01 run scoreboard players get $z new_translation

tag @s add deg_saved

data modify storage deg SaveTemp.entities[0].properties.Rotation[0] set from entity @s Rotation[0]
data modify storage deg SaveTemp.entities[0].properties.Rotation[1] set from entity @s Rotation[1]

execute if entity @e[type=#deg:display_entities,tag=deg_save,tag=!deg_saved] as @e[type=#deg:display_entities,tag=deg_save,tag=!deg_saved,limit=1] run function deg:save/addtolist