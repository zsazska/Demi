item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{Unbreakable:1b,HideFlags:127,display:{Name:'[{"text":"Block display converter","italic": false,"color": "yellow"},{"text":" (Keep blocks: ","color": "aqua"},{"text":"ON","color": "dark_green","bold": true},{"text":")","color": "aqua"}]'},BdConverter:1b,KeepBlocks:1b}

execute if score @s bdcmode matches 1..2 anchored eyes run function btbd:item/hitblock

scoreboard players add @s bdcmode 1

