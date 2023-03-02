summon marker ~ ~ ~ {Tags:["getpos"]}

execute store result score @s origin_x run data get entity @e[tag=getpos,limit=1] Pos[0] 100
execute store result score @s origin_y run data get entity @e[tag=getpos,limit=1] Pos[1] 100
execute store result score @s origin_z run data get entity @e[tag=getpos,limit=1] Pos[2] 100

kill @e[tag=getpos]

scoreboard players operation $x1 deg_coordinate_display = @s origin_x
scoreboard players operation $x100 deg_coordinate_display = @s origin_x
scoreboard players operation $x100 deg_coordinate_display %= $100 deg_coordinate_display
scoreboard players operation $x1 deg_coordinate_display /= $100 deg_coordinate_display

scoreboard players operation $y1 deg_coordinate_display = @s origin_y
scoreboard players operation $y100 deg_coordinate_display = @s origin_y
scoreboard players operation $y100 deg_coordinate_display %= $100 deg_coordinate_display
scoreboard players operation $y1 deg_coordinate_display /= $100 deg_coordinate_display

scoreboard players operation $z1 deg_coordinate_display = @s origin_z
scoreboard players operation $z100 deg_coordinate_display = @s origin_z
scoreboard players operation $z100 deg_coordinate_display %= $100 deg_coordinate_display
scoreboard players operation $z1 deg_coordinate_display /= $100 deg_coordinate_display

tellraw @s [{"text":"Origin set to ( ","color":"light_purple"},{"score":{"name":"$x1","objective":"deg_coordinate_display"}},{"text":"."},{"score":{"name":"$x100","objective":"deg_coordinate_display"}},{"text":", "},{"score":{"name":"$y1","objective":"deg_coordinate_display"}},{"text":"."},{"score":{"name":"$y100","objective":"deg_coordinate_display"}},{"text":", "},{"score":{"name":"$z1","objective":"deg_coordinate_display"}},{"text":"."},{"score":{"name":"$z100","objective":"deg_coordinate_display"}},{"text":")"}]

