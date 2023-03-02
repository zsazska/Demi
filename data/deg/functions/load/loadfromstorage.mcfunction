#Loads the group from deg LoadTemp and clears it !!Doesn't apply ids yet!! !!DOESN'T ACCOUNT FOR ROTATION!!

summon armor_stand ~ ~ ~ {Tags:["demi_group","new"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}

scoreboard players set @e[type=armor_stand,tag=new] resize_x 0
scoreboard players set @e[type=armor_stand,tag=new] resize_y 0
scoreboard players set @e[type=armor_stand,tag=new] resize_z 0

execute unless data storage deg {LoadTemp:{entities:[]}} run function deg:load/summonnew
tag @e[tag=new] remove new