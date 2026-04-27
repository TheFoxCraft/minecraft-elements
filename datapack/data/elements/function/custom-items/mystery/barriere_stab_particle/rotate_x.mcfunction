
execute as @n[type=marker,tag=elements_particle_provider] at @s run particle wax_on ^ ^ ^1.3 0 0 0 0 1

#define step size for x here
execute as @n[type=marker,tag=elements_particle_provider] at @s run rotate @s ~9 ~


scoreboard players remove @s elements_custom-items_mystery_barriere-stab_particle_x 1

execute if score @s elements_custom-items_mystery_barriere-stab_particle_x matches 1.. as @s run function elements:custom-items/mystery/barriere_stab_particle/rotate_x
