summon marker ~ ~ ~ {Tags:["getpos"]}

execute store result score @s selector_1_x run data get entity @e[tag=getpos,limit=1] Pos[0]
execute store result score @s selector_1_y run data get entity @e[tag=getpos,limit=1] Pos[1]
execute store result score @s selector_1_z run data get entity @e[tag=getpos,limit=1] Pos[2]

kill @e[tag=getpos]

tellraw @s [{"text":"First corner set to ( ","color":"light_purple"},{"score":{"name":"@s ","objective":"selector_1_x"}},{"text":", "},{"score":{"name":"@s","objective":"selector_1_y"}},{"text":", "},{"score":{"name":"@s","objective":"selector_1_z"}},{"text":")"}]