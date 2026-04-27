$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~1 run particle flame

$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ spruce_sapling as @s run function elements:farm_slots/stage_2/fail

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots >= @s elements_farm-slots_stage-2_max-slots run function elements:farm_slots/stage_2/over_max

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ spruce_sapling as @s if score @s elements_farm-slots_stage-2_slots < @s elements_farm-slots_stage-2_max-slots run function elements:farm_slots/stage_2/place with entity @s
