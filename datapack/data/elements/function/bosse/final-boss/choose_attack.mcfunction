execute store result score @s elements_random run random value 1..8

execute if score @s elements_random matches 1 run function elements:bosse/final-boss/attacks/death_hit/main
execute if score @s elements_random matches 2 run function elements:bosse/final-boss/attacks/heal
execute if score @s elements_random matches 3 run function elements:bosse/final-boss/attacks/clear_effects
execute if score @s elements_random matches 4 run function elements:bosse/final-boss/attacks/wither_skeleton_helper
execute if score @s elements_random matches 5 run function elements:bosse/final-boss/attacks/lightning_bold
execute if score @s elements_random matches 6 run function elements:bosse/final-boss/attacks/effects
execute if score @s elements_random matches 7 run function elements:bosse/final-boss/attacks/creeper
execute if score @s elements_random matches 8 run function elements:bosse/final-boss/attacks/tnt