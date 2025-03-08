# Summon a ray at the caster
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[elements_raycast_stage_1]}

# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @n[tag=elements_raycast_stage_1] ^ ^ ^ ~ ~

# Process the ray
execute as @n[tag=elements_raycast_stage_1] run function elements:stages/raycasts/stage_1/process
