# Herzen-MANAGEMENT

execute as @a unless score @s elements_maxhealth = @s elements_maxhealth_old run scoreboard players set @s elements_maxhealth_update_queue 1

execute as @a run scoreboard players operation @s elements_maxhealth_old = @s elements_maxhealth

execute as @a[scores={elements_maxhealth_update_queue=1},sort=nearest,limit=1] store result storage elements_get_data maxhealth int 1 run scoreboard players get @s elements_maxhealth
execute as @a[scores={elements_maxhealth_update_queue=1},sort=nearest,limit=1] run function elements:sonstiges/set_max-health with storage elements_get_data