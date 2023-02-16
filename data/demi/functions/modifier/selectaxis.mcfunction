tag @e[tag=axisdisplay,sort=nearest,limit=1] add selectedaxis
data modify entity @e[tag=axisdisplay,sort=nearest,limit=1] Glowing set value 1b

#
execute as @e[type=#demi:display_entities] if score @s demi_id = $compare demi_id run tag @s add affected


execute at @s run summon marker ~ ~ ~ {Tags:["distancecalculator","new"]}

execute if entity @s[predicate=demi:scalemode] run tag @e[tag=new] add scale
execute if entity @s[predicate=demi:translationmode] run tag @e[tag=new] add translation
execute if entity @s[predicate=demi:leftrotationmode] run tag @e[tag=new] add leftrotation
execute if entity @s[predicate=demi:rightrotationmode] run tag @e[tag=new] add rightrotation
execute if entity @s[predicate=demi:positionmode] run tag @e[tag=new] add position

execute store result score @e[tag=new] old_pos_x run data get entity @e[tag=affected,limit=1] Pos[0] 100
execute store result score @e[tag=new] old_pos_y run data get entity @e[tag=affected,limit=1] Pos[1] 100
execute store result score @e[tag=new] old_pos_z run data get entity @e[tag=affected,limit=1] Pos[2] 100

scoreboard players operation @e[tag=new] demi_id = @s demi_id
tag @e remove new
tag @e remove affected