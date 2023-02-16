execute as @a[tag=!sneaking,predicate=demi:issneaking] run function demi:mode_change/addscore
execute as @a[scores={mode_change=1..}] run scoreboard players remove @s mode_change 1
tag @a[tag=sneaking,predicate=!demi:issneaking] remove sneaking
execute as @a if score @s mode_change matches 9.. run function demi:mode_change/changedmode