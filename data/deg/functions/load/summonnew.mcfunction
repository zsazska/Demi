data modify storage deg TypeCheck set from storage deg LoadTemp.entities[0].type

execute if data storage deg {TypeCheck:"block"} run summon block_display ~ ~ ~ {Tags:["demi_grouped","newdisplay","block"]}
execute if data storage deg {TypeCheck:"item"} run summon item_display ~ ~ ~ {Tags:["demi_grouped","newdisplay","item"]}
execute if data storage deg {TypeCheck:"text"} run summon text_display ~ ~ ~ {Tags:["demi_grouped","newdisplay","text"]}

execute if entity @e[tag=newdisplay,tag=block] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] block_state set from storage deg LoadTemp.entities[0].properties.block_state
execute if entity @e[tag=newdisplay,tag=item] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] item set from storage deg LoadTemp.entities[0].properties.item
execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] text set from storage deg LoadTemp.entities[0].properties.text

data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] transformation set from storage deg LoadTemp.entities[0].properties.transformation
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] billboard set from storage deg LoadTemp.entities[0].properties.billboard
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] brightness set from storage deg LoadTemp.entities[0].properties.brightness
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] view_range set from storage deg LoadTemp.entities[0].properties.view_range
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] shadow_radius set from storage deg LoadTemp.entities[0].properties.shadow_radius
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] shadow_strength set from storage deg LoadTemp.entities[0].properties.shadow_strength
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] height set from storage deg LoadTemp.entities[0].properties.height
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] width set from storage deg LoadTemp.entities[0].properties.width
data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] glow_color_override set from storage deg LoadTemp.entities[0].properties.glow_color_override

execute if entity @e[tag=newdisplay,tag=item] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] item_display set from storage deg LoadTemp.entities[0].properties.item_display

execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] line_width set from storage deg LoadTemp.entities[0].properties.line_width
execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] text_opacity set from storage deg LoadTemp.entities[0].properties.text_opacity
execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] background set from storage deg LoadTemp.entities[0].properties.background
execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] default_background set from storage deg LoadTemp.entities[0].properties.default_background
execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] shadow set from storage deg LoadTemp.entities[0].properties.shadow
execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] see_through set from storage deg LoadTemp.entities[0].properties.see_through
execute if entity @e[tag=newdisplay,tag=text] run data modify entity @e[type=#deg:display_entities,tag=newdisplay,limit=1] alignment set from storage deg LoadTemp.entities[0].properties.alignment

execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] left_rotation_x run data get storage deg LoadTemp.entities[0].properties.Lrotation[0]
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] left_rotation_y run data get storage deg LoadTemp.entities[0].properties.Lrotation[1]
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] left_rotation_z run data get storage deg LoadTemp.entities[0].properties.Lrotation[2]
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] right_rotation_x run data get storage deg LoadTemp.entities[0].properties.Rrotation[0]
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] right_rotation_y run data get storage deg LoadTemp.entities[0].properties.Rrotation[1]
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] right_rotation_z run data get storage deg LoadTemp.entities[0].properties.Rrotation[2]

execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] translation_x run data get storage deg LoadTemp.entities[0].properties.transformation.translation[0] 100
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] translation_y run data get storage deg LoadTemp.entities[0].properties.transformation.translation[1] 100
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] translation_z run data get storage deg LoadTemp.entities[0].properties.transformation.translation[2] 100

execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] scale_x run data get storage deg LoadTemp.entities[0].properties.transformation.scale[0] 100
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] scale_y run data get storage deg LoadTemp.entities[0].properties.transformation.scale[1] 100
execute store result score @e[type=#deg:display_entities,tag=newdisplay,limit=1] scale_z run data get storage deg LoadTemp.entities[0].properties.transformation.scale[2] 100

execute as @e[type=#deg:display_entities,tag=newdisplay] run scoreboard players operation @s default_scale_x = @s scale_x
execute as @e[type=#deg:display_entities,tag=newdisplay] run scoreboard players operation @s default_scale_y = @s scale_y
execute as @e[type=#deg:display_entities,tag=newdisplay] run scoreboard players operation @s default_scale_z = @s scale_z

execute as @e[type=#deg:display_entities,tag=newdisplay] run scoreboard players operation @s default_translation_x = @s translation_x
execute as @e[type=#deg:display_entities,tag=newdisplay] run scoreboard players operation @s default_translation_y = @s translation_y
execute as @e[type=#deg:display_entities,tag=newdisplay] run scoreboard players operation @s default_translation_z = @s translation_z

ride @e[type=#deg:display_entities,tag=newdisplay,limit=1] mount @e[tag=demi_group,tag=new,limit=1]

tag @e[type=#deg:display_entities,tag=newdisplay] add gotdefaultscores

tag @e[type=#deg:display_entities,tag=newdisplay] remove newdisplay
tag @e[type=#deg:display_entities,tag=block] remove block
tag @e[type=#deg:display_entities,tag=item] remove item
tag @e[type=#deg:display_entities,tag=text] remove text



data remove storage deg LoadTemp.entities[0]
execute unless data storage deg {LoadTemp:{entities:[]}} run function deg:load/summonnew