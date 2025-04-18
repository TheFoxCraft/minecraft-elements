execute as @s store result score @s elements_random run random value 1..1000
execute if score @s elements_random matches 1 run function elements:uniques/trigger/mosh_pit/trigger