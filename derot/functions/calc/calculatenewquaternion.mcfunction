#Final w
scoreboard players operation $finw rotation_calc = $w0w1 rotation_calc
scoreboard players operation $finw rotation_calc -= $x0x1 rotation_calc
scoreboard players operation $finw rotation_calc -= $y0y1 rotation_calc
scoreboard players operation $finw rotation_calc -= $z0z1 rotation_calc
#Final x
scoreboard players operation $finx rotation_calc = $w0x1 rotation_calc
scoreboard players operation $finx rotation_calc += $x0w1 rotation_calc
scoreboard players operation $finx rotation_calc += $y0z1 rotation_calc
scoreboard players operation $finx rotation_calc -= $z0y1 rotation_calc
#Final y
scoreboard players operation $finy rotation_calc = $w0y1 rotation_calc
scoreboard players operation $finy rotation_calc -= $x0z1 rotation_calc
scoreboard players operation $finy rotation_calc += $y0w1 rotation_calc
scoreboard players operation $finy rotation_calc += $z0x1 rotation_calc
#Final z
scoreboard players operation $finz rotation_calc = $w0z1 rotation_calc
scoreboard players operation $finz rotation_calc += $x0y1 rotation_calc
scoreboard players operation $finz rotation_calc -= $y0x1 rotation_calc
scoreboard players operation $finz rotation_calc += $z0w1 rotation_calc