execute in elements:hub run particle minecraft:portal -11.5 100.00 -14.5 0.1 0.3 0.1 0.01 100


execute as @e[type=minecraft:interaction,tag=stage-1_portal] at @s on target run tag @s add stage-1_portal
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=..1}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du kannst den Bossraum erst betreten, wenn du das Teleport-Modul freigeschalten hast!","color": "#ff8800"}]
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=..1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2}] if score #server elements_stage_1_boss_status matches 0 in elements:stage-1_bossroom positioned 0 100 0 run spreadplayers 0 0 1 7 under 105 false @s
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2}] if score #server elements_stage_1_boss_status matches 0 at @s run playsound entity.enderman.teleport master @s
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2,elements_custom_doubleclick_cooldown=1..}] if score #server elements_stage_1_boss_status matches 1.. in elements:stage-1_bossroom positioned 0 100 0 run spreadplayers 0 0 1 7 under 105 false @s
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2,elements_custom_doubleclick_cooldown=1..}] if score #server elements_stage_1_boss_status matches 1.. run tag @s add elements_boss_spectator
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2,elements_custom_doubleclick_cooldown=1..}] if score #server elements_stage_1_boss_status matches 1.. run gamemode spectator @s
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2,elements_custom_doubleclick_cooldown=1..}] if score #server elements_stage_1_boss_status matches 1.. at @s run playsound entity.enderman.teleport master @s
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2,elements_custom_doubleclick_cooldown=0}] if score #server elements_stage_1_boss_status matches 1.. run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Ein Boss-Kampf läuft derzeit! Klicke erneut um als Zuschauer beizutreten!","color": "white"}]
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2,elements_custom_doubleclick_cooldown=0}] if score #server elements_stage_1_boss_status matches 1.. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[tag=stage-1_portal,scores={elements_enderchest_level_tp=2,elements_custom_doubleclick_cooldown=0}] if score #server elements_stage_1_boss_status matches 1.. run scoreboard players set @s elements_custom_doubleclick_cooldown 40
execute as @e[type=minecraft:interaction,tag=stage-1_portal] run data remove entity @s interaction
tag @a remove stage-1_portal


execute in elements:stage-1_bossroom positioned 0.5 101.00 0.5 if score #server elements_stage_1_boss_status matches 0 unless entity @e[tag=stage-1_boss_activate,type=interaction,distance=..1] run summon interaction 0.5 101.00 0.5 {width:1.01f,height:1.01f,response:1b,Tags:["stage-1_boss_activate"]}
execute in elements:stage-1_bossroom positioned 0.5 102.50 0.5 if score #server elements_stage_1_boss_status matches 0 unless entity @e[tag=stage-1_boss_altar_name,type=text_display,distance=..1] run summon text_display 0.5 102.50 0.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["stage-1_boss_altar_name"],text:'[{"text": "Altar","color": "gold"}]'}
execute in elements:stage-1_bossroom unless block 0 101 1 minecraft:ender_chest if score #server elements_stage_1_boss_status matches 0 run setblock 0 101 1 ender_chest[facing=east]
execute in elements:stage-1_bossroom unless block 0 101 0 minecraft:reinforced_deepslate if score #server elements_stage_1_boss_status matches 0 run setblock 0 101 0 reinforced_deepslate
execute in elements:stage-1_bossroom unless block 0 101 -1 minecraft:chest if score #server elements_stage_1_boss_status matches 0 run setblock 0 101 -1 chest[facing=east]
execute in elements:stage-1_bossroom unless block 0 101 1 minecraft:air if score #server elements_stage_1_boss_status matches 1 run setblock 0 101 1 air
execute in elements:stage-1_bossroom unless block 0 101 0 minecraft:air if score #server elements_stage_1_boss_status matches 1 run setblock 0 101 0 air
execute in elements:stage-1_bossroom unless block 0 101 -1 minecraft:air if score #server elements_stage_1_boss_status matches 1 run setblock 0 101 -1 air


execute as @e[type=minecraft:interaction,tag=stage-1_boss_activate] at @s on target run tag @s add stage-1_boss_spawn
execute as @a[tag=stage-1_boss_spawn] unless entity @s[nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du benötigst das Bossitem vom Steinmetz!","color": "white"}]
execute as @a[tag=stage-1_boss_spawn] unless entity @s[nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] store result score #server elements_stage_1_boss_loot_count in elements:stage-1_bossroom run data get block 0 101 -1 Items
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 1.. run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "In der Loot-Kiste befinden sich Items!","color": "white"}]
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 1.. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 at @s run playsound entity.player.levelup master @s
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run kill @e[type=interaction,tag=stage-1_boss_activate]
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run kill @e[type=text_display,tag=stage-1_boss_altar_name]
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players set #server elements_stage_1_boss_status 1
#stats
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players add #server elements_stats_stage_1_boss_spawned 1
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players add #server elements_stats_stage_0_boss_spawned 1
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players add @s elements_stats_stage_1_boss_spawned 1
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players add @s elements_stats_stage_0_boss_spawned 1
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players set @a elements_stage_1_boss_spawn-player 0
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players set @s elements_stage_1_boss_spawn-player 1
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_boss-frucht_remain=1}] if score #server elements_stage_1_boss_loot_count matches 0 run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Deine letze Bossfrucht wurde verbraucht!","color": "red"}]
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_boss-frucht_remain=2..}] if score #server elements_stage_1_boss_loot_count matches 0 run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Bossfrucht angewandt!!","color": "white"}]
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players set #server elements_custom-items_shop_boss-frucht_remain 1
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players remove @s elements_custom-items_shop_boss-frucht_remain 1

#stats-ende
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 in elements:stage-1_bossroom run tellraw @a[distance=0..] ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Der Rießige Silberfisch wurde gespawnt!","color": "white"}]
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 in elements:stage-1_bossroom run summon silverfish 0 102 0 {PersistenceRequired:1b,Health:256f,Tags:["stage-1_boss"],attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:follow_range",base:50},{id:"minecraft:max_health",base:256},{id:"minecraft:scale",base:7}]}
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run scoreboard players set #server elements_stage_1_boss_melee_timer 40
execute as @a[tag=stage-1_boss_spawn,nbt={SelectedItem:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}}}] if score #server elements_stage_1_boss_loot_count matches 0 run clear @s blue_ice[custom_model_data=1] 1
execute as @e[type=minecraft:interaction,tag=stage-1_boss_activate] run data remove entity @s interaction
tag @a remove stage-1_boss_spawn


execute in elements:stage-1_bossroom if score #server elements_stage_1_boss_status matches 1 run bossbar set elements:stage-1_boss players @a[distance=0..]
execute if score #server elements_stage_1_boss_status matches 0 run bossbar set elements:stage-1_boss players

