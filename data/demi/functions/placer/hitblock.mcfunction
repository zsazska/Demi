execute if predicate demi:blockmode positioned ^ ^ ^0.1 run function demi:placer/placeblockdisplay
execute if predicate demi:itemmode positioned ^ ^ ^-0.1 positioned ~0.5 ~1 ~0.5 run function demi:placer/placeitemdisplay
execute if predicate demi:textmode positioned ^ ^ ^-0.1 positioned ~0.5 ~0.5 ~0.5 run function demi:placer/placetextdisplay

scoreboard players set @s raycast_duration 0