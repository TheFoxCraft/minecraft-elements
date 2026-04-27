execute as @s store result score @s elements_random run random value 1..100000
execute if score @s elements_random matches 1 run function elements:uniques/trigger/fragment_der_himmelswarze/trigger