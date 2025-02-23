# No Too-Expensive
execute as @e[type=item,nbt={OnGround:1b}] store success score @s elements_sonstiges_no-too-expensive_success run data remove entity @s Item.components."minecraft:repair_cost"
execute as @e[type=item,scores={elements_sonstiges_no-too-expensive_success=1}] at @s run tellraw @a[distance=..5] ["",{"text":"[","color":"gray"},{"text":"Elements","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Deinem Item ","color":"white"},{"selector": "@s","color": "yellow"},{"text":" wurde die Repair-Cost erfolgreich resettet!","color":"white"}]


# Herzen-MANAGEMENT

execute as @a unless score @s elements_maxhealth = @s elements_maxhealth_old run scoreboard players set @s elements_maxhealth_update_queue 1

execute as @a run scoreboard players operation @s elements_maxhealth_old = @s elements_maxhealth

execute as @a[scores={elements_maxhealth_update_queue=1},sort=nearest,limit=1] store result storage elements_get_data maxhealth int 1 run scoreboard players get @s elements_maxhealth
execute as @a[scores={elements_maxhealth_update_queue=1},sort=nearest,limit=1] run function elements:sonstiges/set_max-health with storage elements_get_data