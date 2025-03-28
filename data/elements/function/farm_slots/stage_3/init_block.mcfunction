

$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ nether_wart_block as @s run function elements:farm_slots/stage_3/fail

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots >= @s elements_farm-slots_stage-3_max-slots run function elements:farm_slots/stage_3/over_max



$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~ ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~ run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~ ~1 ~1 run particle flame
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots positioned ~-0.5 ~ ~-0.5 positioned ~1 ~1 ~1 run particle flame

$execute positioned $(x) $(y) $(z) if block ~ ~ ~ nether_wart_block as @s if score @s elements_farm-slots_stage-3_slots < @s elements_farm-slots_stage-3_max-slots run function elements:farm_slots/stage_3/place with entity @s

