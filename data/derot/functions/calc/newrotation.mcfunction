function derot:calc/storerotations
function derot:calc/multiplycalc
function derot:calc/calculatenewquaternion
data modify storage derot Out set value [0.0f,0.0f,0.0f,0.0f]

execute store result storage derot Out[3] float 0.00000001 run scoreboard players get $finw rotation_calc
execute store result storage derot Out[0] float 0.00000001 run scoreboard players get $finx rotation_calc
execute store result storage derot Out[1] float 0.00000001 run scoreboard players get $finy rotation_calc
execute store result storage derot Out[2] float 0.00000001 run scoreboard players get $finz rotation_calc