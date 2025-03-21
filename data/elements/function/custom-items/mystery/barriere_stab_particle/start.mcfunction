summon marker ~ ~1 ~ {Tags:["elements_particle_provider"]}

execute as @n[type=marker,tag=elements_particle_provider] at @s run rotate @s 0 -90

# define step count for y here and step size inside file
scoreboard players set @s elements_custom-items_mystery_barriere-stab_particle_y 19
# define step count for x inside file


execute as @s run function elements:custom-items/mystery/barriere_stab_particle/rotate_y



kill @n[type=marker,tag=elements_particle_provider]