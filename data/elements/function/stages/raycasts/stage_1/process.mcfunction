# Initialize steps
scoreboard players set @s elements_raycast_step_limit_stage_1 500

# Move the ray
execute at @s run function elements:stages/raycasts/stage_1/move

# Check if the ray hit a Creeper
execute as @s[tag=elements_raycast_stage_1_hitBlock] at @s run function elements:stages/raycasts/stage_1/hit

# Destroy the ray (very important!)
kill @s
