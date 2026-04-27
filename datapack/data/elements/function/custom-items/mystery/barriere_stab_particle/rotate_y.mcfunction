# define step count for x here and step size inside file
scoreboard players set @s elements_custom-items_mystery_barriere-stab_particle_x 40

execute as @s run function elements:custom-items/mystery/barriere_stab_particle/rotate_x

# define step size for y here
execute as @n[type=marker,tag=elements_particle_provider] at @s run rotate @s 0 ~10

scoreboard players remove @s elements_custom-items_mystery_barriere-stab_particle_y 1

execute if score @s elements_custom-items_mystery_barriere-stab_particle_y matches 1.. as @s run function elements:custom-items/mystery/barriere_stab_particle/rotate_y
