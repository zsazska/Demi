scoreboard players operation $temp interpolation_delay = @s interpolation_delay
scoreboard players operation $temp interpolation_duration = @s interpolation_duration

execute on passengers run scoreboard players operation @s interpolation_delay = $temp interpolation_delay
execute on passengers run scoreboard players operation @s interpolation_duration = $temp interpolation_duration

function deg:resize/resizex_i
function deg:resize/resizey_i
function deg:resize/resizez_i