
$data merge entity @s {Tags:["elements_farm-slot_stage-6"],data:{Owner:$(UUID)}}



execute if block ~ ~ ~ cocoa[facing=north] run scoreboard players set @s elements_farm-slots_stage-6_rotation 1
execute if block ~ ~ ~ cocoa[facing=east] run scoreboard players set @s elements_farm-slots_stage-6_rotation 2
execute if block ~ ~ ~ cocoa[facing=south] run scoreboard players set @s elements_farm-slots_stage-6_rotation 3
execute if block ~ ~ ~ cocoa[facing=west] run scoreboard players set @s elements_farm-slots_stage-6_rotation 4