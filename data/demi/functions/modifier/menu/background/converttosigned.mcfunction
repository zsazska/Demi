scoreboard players operation $temp2 background_alpha = $temp background_alpha
scoreboard players set $temp background_alpha -128
scoreboard players remove $temp2 background_alpha 128
scoreboard players operation $temp background_alpha += $temp2 background_alpha