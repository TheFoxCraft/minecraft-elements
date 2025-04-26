execute store result score .server elements_spawn_levelbaum_allay-count if entity @e[tag=spawn_levelbaum_allay]


execute if score .server elements_spawn_levelbaum_timer_tick matches 1.. run scoreboard players remove .server elements_spawn_levelbaum_timer_tick 1
execute if score .server elements_spawn_levelbaum_timer_tick matches 0 run scoreboard players remove .server elements_spawn_levelbaum_timer_min 1
execute if score .server elements_spawn_levelbaum_timer_tick matches 0 run scoreboard players set .server elements_spawn_levelbaum_timer_tick 1200


execute if score .server elements_spawn_levelbaum_timer_min matches 0 if score .server elements_spawn_levelbaum_allay-count matches ..1 in elements:hub run summon allay 0.5 102.00 16.5 {CanDuplicate:0b,Tags:["spawn_levelbaum_allay"]}
execute if score .server elements_spawn_levelbaum_timer_min matches 0 if score .server elements_spawn_levelbaum_allay-count matches ..1 in elements:hub run spreadplayers 0.5 16.5 0 5 under 104 false @e[type=allay,tag=spawn_levelbaum_allay]
execute if score .server elements_spawn_levelbaum_timer_min matches 0 if score .server elements_spawn_levelbaum_allay-count matches ..1 in elements:hub positioned 0.5 102.00 16.5 run tellraw @a[distance=..20] ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Auf der Grünfläche ist ein kleiner Allay gespawnt. Vielleicht hat er ja etwas brauchbares dabei"}]
execute if score .server elements_spawn_levelbaum_timer_min matches 0 if score .server elements_spawn_levelbaum_allay-count matches 2.. in elements:hub positioned 0.5 102.00 16.5 run tellraw @a[distance=..20] ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Auf der Grünfläche wollte leider kein neuer Allay spawnen, da bereits genügend hier sind"}]
execute if score .server elements_spawn_levelbaum_timer_min matches 0 store result score .server elements_spawn_levelbaum_timer_min run random value 45..65




