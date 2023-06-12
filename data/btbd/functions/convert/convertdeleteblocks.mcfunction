summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,0],Invulnerable:1b,NoGravity:1b,Invisible:1b}
execute at @s run loot replace entity 0-0-0-0-0 weapon loot blockstate:get

execute align xyz run summon block_display ~ ~ ~ {Tags:["newbd"]}

data modify entity @e[tag=newbd,limit=1] block_state.Name set from entity 0-0-0-0-0 HandItems[0].tag.Name
data modify entity @e[tag=newbd,limit=1] block_state.Properties set from entity 0-0-0-0-0 HandItems[0].tag.Properties

setblock ~ ~ ~ air

tag @e[tag=newbd] remove newbd
kill 0-0-0-0-0