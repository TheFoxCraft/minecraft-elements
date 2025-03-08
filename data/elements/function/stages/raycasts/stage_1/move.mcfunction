# Move forward according to step size
tp @s ^ ^ ^0.01

# TEST
execute if entity @a[nbt={SelectedItem:{id:"minecraft:nether_star"}}] run particle flame ~ ~ ~ 0 0 0 0 1 force

# Check for collisions with Creepers
execute if entity @e[distance=..0.5,type=!marker,type=!area_effect_cloud] run tag @s add elements_raycast_stage_1_hitMob

# Check for collisions with blocks
execute unless block ~ ~ ~ air run tag @s add elements_raycast_stage_1_hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s elements_raycast_step_limit_stage_1 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!elements_raycast_stage_1_hitMob,tag=!elements_raycast_stage_1_hitBlock,scores={elements_raycast_step_limit_stage_1=1..}] at @s run function elements:stages/raycasts/stage_1/move
