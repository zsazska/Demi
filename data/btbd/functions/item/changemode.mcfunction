execute if predicate btbd:keepblocks run tag @s add changedmode
execute if predicate btbd:keepblocks run item modify entity @s weapon.mainhand btbd:tonotkeepblocks

execute unless entity @s[tag=changedmode] run item modify entity @s weapon.mainhand btbd:tokeepblocks

tag @s remove changedmode

scoreboard players set @s bdcsneak 0