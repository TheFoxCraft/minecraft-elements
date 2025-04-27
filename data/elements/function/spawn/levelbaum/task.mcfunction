#spawning

execute as @e[type=minecraft:interaction,tag=spawn_levelbaum_task] at @s on target run tag @s add spawn_levelbaum_task
execute as @a[tag=spawn_levelbaum_task,scores={elements_inv_fake_bonemeal=1..},nbt={SelectedItem:{id:"minecraft:white_dye",components:{"minecraft:custom_model_data":1}}}] run scoreboard players add .server elements_spawn_levelbaum_task 1
execute as @a[tag=spawn_levelbaum_task,scores={elements_inv_fake_bonemeal=1..},nbt={SelectedItem:{id:"minecraft:white_dye",components:{"minecraft:custom_model_data":1}}}] run clear @s white_dye[custom_model_data=1] 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=spawn_levelbaum_task,distance=..10] run data remove entity @s interaction
tag @a remove spawn_levelbaum_task



execute if score .server elements_spawn_levelbaum_task matches 100.. run kill @e[type=interaction,tag=spawn_levelbaum_task]
execute if score .server elements_spawn_levelbaum_task matches 100.. run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Die verdorrte Grünfläche wurde mit Knochenmehl wieder repariert! Doch sie birgt noch ein Geheimnis"}]
execute if score .server elements_spawn_levelbaum_task matches 100.. in elements:hub run place template elements:hub/aufbau_flaeche_gegossen -3 100 13
execute if score .server elements_spawn_levelbaum_task matches 100.. run scoreboard players set .server elements_spawn_levelbaum_enable 1
execute if score .server elements_spawn_levelbaum_task matches 100.. run scoreboard players set .server elements_spawn_levelbaum_task 0


