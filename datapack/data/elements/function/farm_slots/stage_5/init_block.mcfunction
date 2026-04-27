$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~1 run particle flame

$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ green_wool as @s run function elements:farm_slots/stage_5/fail

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots >= @s elements_farm-slots_stage-5_max-slots run function elements:farm_slots/stage_5/over_max

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ green_wool as @s if score @s elements_farm-slots_stage-5_slots < @s elements_farm-slots_stage-5_max-slots run function elements:farm_slots/stage_5/place with entity @s
