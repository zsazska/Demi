execute as @a[scores={bdcused=1..},predicate=btbd:holdingconverter] at @s run function btbd:item/itemused

scoreboard players set @a bdcused 0
execute as @a[predicate=btbd:converterinoffhand,predicate=btbd:keepblocks] at @s run function btbd:item/offhandusekeep
execute as @a[predicate=btbd:converterinoffhand,predicate=btbd:dontkeepblocks] at @s run function btbd:item/offhandusenokeep
execute as @a[predicate=!btbd:holdingconverter] run function btbd:item/reset
execute as @a[scores={bdcmode=0},predicate=btbd:holdingconverter] run scoreboard players set @s bdcmode 1


#Mode Change
execute as @a[predicate=btbd:holdingconverter,predicate=btbd:issneaking,tag=!bdcsneaking] run function btbd:item/sneak
tag @a[predicate=!btbd:issneaking] remove bdcsneaking
scoreboard players remove @a[scores={bdcsneak=1..}] bdcsneak 1

#Messages

title @a[scores={bdcmode=1}] actionbar [{"text":"Right click to set the 1st corner (or press ","color": "yellow"},{"keybind":"key.swapOffhand","color":"aqua"},{"text":" to set it at your location)"}]
title @a[scores={bdcmode=2}] actionbar [{"text":"Right click to set the 2nd corner (or press ","color": "yellow"},{"keybind":"key.swapOffhand","color":"aqua"},{"text":" to set it at your location)"}]
title @a[scores={bdcmode=3}] actionbar {"text": "Right click to convert to display entities","color": "yellow"}