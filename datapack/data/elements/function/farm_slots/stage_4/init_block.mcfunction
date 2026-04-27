$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~1 run particle flame

$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ sweet_berry_bush as @s run function elements:farm_slots/stage_4/fail

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots >= @s elements_farm-slots_stage-4_max-slots run function elements:farm_slots/stage_4/over_max

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ sweet_berry_bush as @s if score @s elements_farm-slots_stage-4_slots < @s elements_farm-slots_stage-4_max-slots run function elements:farm_slots/stage_4/place with entity @s
