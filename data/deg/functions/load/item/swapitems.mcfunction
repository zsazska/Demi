summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["itemswapper"]}

item replace entity @e[tag=itemswapper] weapon.mainhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[tag=itemswapper,limit=1] weapon.mainhand

kill @e[tag=itemswapper]