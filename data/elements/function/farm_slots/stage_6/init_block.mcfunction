

$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ cocoa as @s run function elements:farm_slots/stage_6/fail

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots >= @s elements_farm-slots_stage-6_max-slots run function elements:farm_slots/stage_6/over_max



$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~1 run particle flame

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ cocoa as @s if score @s elements_farm-slots_stage-6_slots < @s elements_farm-slots_stage-6_max-slots run function elements:farm_slots/stage_6/place with entity @s

