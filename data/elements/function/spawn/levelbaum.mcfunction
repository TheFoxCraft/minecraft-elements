#spawning

execute as @e[type=minecraft:interaction,tag=spawn_levelbaum_task] at @s on target run tag @s add spawn_levelbaum_task
execute as @a[tag=spawn_levelbaum_task,scores={elements_inv_bonemeal=1..}] run scoreboard players add #server elements_spawn_levelbaum_task 1
execute as @a[tag=spawn_levelbaum_task,scores={elements_inv_bonemeal=1..}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 2
execute as @a[tag=spawn_levelbaum_task,scores={elements_inv_bonemeal=1..}] run clear @s bone_meal 1
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=spawn_levelbaum_task,distance=..10] run data remove entity @s interaction
tag @a remove spawn_levelbaum_task

execute store result score #server elements_spawn_levelbaum_allay-count if entity @e[tag=spawn_levelbaum_allay]


execute if score #server elements_spawn_levelbaum_task matches 100.. run kill @e[type=interaction,tag=spawn_levelbaum_task]
execute if score #server elements_spawn_levelbaum_task matches 100.. run tellraw @a ["",{"text": "Server: ","color": "yellow"},{"text": "Die verdorrte Grünfläche wurde mit Knochenmehl wieder repariert! Doch sie birgt noch ein Geheimnis"}]
execute if score #server elements_spawn_levelbaum_task matches 100.. in elements:hub run place template elements:hub/aufbau_flaeche_gegossen -3 100 13
execute if score #server elements_spawn_levelbaum_task matches 100.. run scoreboard players set #server elements_spawn_levelbaum_enable 1
execute if score #server elements_spawn_levelbaum_task matches 100.. run scoreboard players set #server elements_spawn_levelbaum_task 0

execute if score #server elements_spawn_levelbaum_enable matches 1 if score #server elements_spawn_levelbaum_timer_tick matches 1.. run scoreboard players remove #server elements_spawn_levelbaum_timer_tick 1
execute if score #server elements_spawn_levelbaum_enable matches 1 if score #server elements_spawn_levelbaum_timer_tick matches 0 run scoreboard players remove #server elements_spawn_levelbaum_timer_min 1
execute if score #server elements_spawn_levelbaum_enable matches 1 if score #server elements_spawn_levelbaum_timer_tick matches 0 run scoreboard players set #server elements_spawn_levelbaum_timer_tick 1200


execute if score #server elements_spawn_levelbaum_enable matches 1 if score #server elements_spawn_levelbaum_timer_min matches 0 if score #server elements_spawn_levelbaum_allay-count matches ..4 in elements:hub run summon allay 0.5 102.00 16.5 {Invulnerable:1b,CanDuplicate:0b,Tags:["spawn_levelbaum_level","spawn_levelbaum_allay"],Passengers:[{id:"minecraft:interaction",width:2f,height:-1f,response:1b,Tags:["spawn_levelbaum_level"]}]}
execute if score #server elements_spawn_levelbaum_enable matches 1 if score #server elements_spawn_levelbaum_timer_min matches 0 if score #server elements_spawn_levelbaum_allay-count matches ..4 in elements:hub positioned 0.5 102.00 16.5 run tellraw @a[distance=..20] ["",{"text": "Server: ","color": "yellow"},{"text": "Auf der Grünfläche ist ein kleiner Allay gespawnt. Vielleicht hat er ja etwas brauchbares dabei"}]
execute if score #server elements_spawn_levelbaum_enable matches 1 if score #server elements_spawn_levelbaum_timer_min matches 0 if score #server elements_spawn_levelbaum_allay-count matches 5.. in elements:hub positioned 0.5 102.00 16.5 run tellraw @a[distance=..20] ["",{"text": "Server: ","color": "yellow"},{"text": "Auf der Grünfläche wollte leider kein neuer Allay spawnen, da bereits genügend hier sind"}]
execute if score #server elements_spawn_levelbaum_enable matches 1 if score #server elements_spawn_levelbaum_timer_min matches 0 store result score #server elements_spawn_levelbaum_timer_min run random value 45..65




execute as @e[type=allay,tag=spawn_levelbaum_level] at @s if entity @s[y=107,dy=10] run tp @s ~ ~-0.01 ~


execute as @e[type=minecraft:interaction,tag=spawn_levelbaum_level] at @s on target run tag @s add spawn_levelbaum_level_player
execute as @a[tag=spawn_levelbaum_level_player] at @s run playsound entity.player.levelup master @s
execute as @a[tag=spawn_levelbaum_level_player] if score #server elements_stage matches 2 run tellraw @s ["",{"text": "Server: ","color": "yellow"},{"text": "Der Allay hat eine große Ladung Level gedroppt! "},{"text": "+500 Level","color": "green"}]
execute as @a[tag=spawn_levelbaum_level_player] if score #server elements_stage matches 2 run xp add @s 500 levels
execute as @a[tag=spawn_levelbaum_level_player] at @s run kill @e[tag=spawn_levelbaum_level,sort=nearest,limit=2]
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=spawn_levelbaum_level_player,distance=..10] run data remove entity @s interaction
tag @a remove spawn_levelbaum_level_player

execute as @e[type=minecraft:interaction,tag=spawn_levelbaum_level] at @s on attacker run tag @s add spawn_levelbaum_level_player
execute as @a[tag=spawn_levelbaum_level_player] at @s run playsound entity.player.levelup master @s
execute as @a[tag=spawn_levelbaum_level_player] if score #server elements_stage matches 2 run tellraw @s ["",{"text": "Server: ","color": "yellow"},{"text": "Der Allay hat eine große Ladung Level gedroppt! "},{"text": "+500 Level","color": "green"}]
execute as @a[tag=spawn_levelbaum_level_player] if score #server elements_stage matches 2 run xp add @s 500 levels
execute as @a[tag=spawn_levelbaum_level_player] at @s run kill @e[tag=spawn_levelbaum_level,sort=nearest,limit=2]
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=spawn_levelbaum_level_player,distance=..10] run data remove entity @s attack
tag @a remove spawn_levelbaum_level_player


