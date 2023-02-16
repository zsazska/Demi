scoreboard players operation $xrot rotation_calc = @s left_rotation_x
scoreboard players operation $yrot rotation_calc = @s left_rotation_y
scoreboard players operation $zrot rotation_calc = @s left_rotation_z

function derot:calc/degreestoradians

data modify storage derot RotationTemp set from storage derot RotationTemplate
execute store result storage derot RotationTemp.X.angle float 0.001 run scoreboard players get $xrot rotation_calc
execute store result storage derot RotationTemp.Y.angle float 0.001 run scoreboard players get $yrot rotation_calc
execute store result storage derot RotationTemp.Z.angle float 0.001 run scoreboard players get $zrot rotation_calc

function derot:calc/storefromentity

data modify storage derot In1 set from storage derot Quaternions.X
data modify storage derot In2 set from storage derot Quaternions.Y

function derot:calc/newrotation

data modify storage derot In1 set from storage derot Quaternions.Z
data modify storage derot In2 set from storage derot Out

function derot:calc/newrotation

data modify entity @s transformation.left_rotation set from storage derot Out
