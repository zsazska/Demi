execute as @e[tag=axisdisplay] if score @s demi_id = @e[type=#demi:display_entities,sort=nearest,limit=1] demi_id run kill @s

summon minecraft:block_display ~0.5 ~ ~ {block_state:{Name:"red_concrete"},transformation:{translation:[0.0f,0.0f,0.0f],scale:[1.0f,0.15f,0.15f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},Tags:["new","axisdisplay","xaxis"],glow_color_override:16711680}
summon minecraft:block_display ~ ~ ~0.5 {block_state:{Name:"blue_concrete"},transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.15f,0.15f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},Tags:["new","axisdisplay","zaxis"],glow_color_override:4607}
summon minecraft:block_display ~ ~0.5 ~ {block_state:{Name:"lime_concrete"},transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.15f,1.0f,0.15f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},Tags:["new","axisdisplay","yaxis"],glow_color_override:1310467}

scoreboard players operation @e[tag=new] demi_id = @s demi_id


tag @e remove new