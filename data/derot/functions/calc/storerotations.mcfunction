#Rotation constant

execute store result score $w0 rotation_calc run data get storage derot In1[3] 10000
execute store result score $x0 rotation_calc run data get storage derot In1[0] 10000
execute store result score $y0 rotation_calc run data get storage derot In1[1] 10000
execute store result score $z0 rotation_calc run data get storage derot In1[2] 10000

#Entity's current rotation

execute store result score $w1 rotation_calc run data get storage derot In2[3] 10000
execute store result score $x1 rotation_calc run data get storage derot In2[0] 10000
execute store result score $y1 rotation_calc run data get storage derot In2[1] 10000
execute store result score $z1 rotation_calc run data get storage derot In2[2] 10000