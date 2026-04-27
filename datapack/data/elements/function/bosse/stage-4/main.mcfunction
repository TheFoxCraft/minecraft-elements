#particle dust{color:[0.588,0.569,0.631],scale:1} -0.25 100.500 12.13 2.5 1.5 2.5 0 1000 normal


execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run kill @e[tag=stage-4_boss]
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set .server elements_custom-items_shop_boss-frucht_remain 0
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set @a elements_stage_4_boss_spawn-player 0
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run tellraw @a[distance=0..,tag=elements_boss_spectator] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Bosskampf Beendet! Zuschauermodus verlassen."}]
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run kill @e[tag=stage_4_boss_room_protection]
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run place template elements:boss_room/stage_4 -29 96 -27
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run setblock 0 100 -1 air
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set @a[distance=0..,tag=elements_boss_spectator] leave 2
execute in elements:stage-4_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set .server elements_stage_4_boss_status 0


execute if score .server elements_stage_4_boss_melee_timer matches 1.. run scoreboard players remove .server elements_stage_4_boss_melee_timer 1

execute if score .server elements_stage_4_boss_melee_timer matches 0 as @e[tag=stage-4_boss] at @s run particle sneeze ~ ~2 ~ 4 4 4 0 2000 normal
execute if score .server elements_stage_4_boss_melee_timer matches 0 as @a at @s if entity @e[tag=stage-4_boss,distance=..10] run damage @s 45 elements:boss_stage_4
execute if score .server elements_stage_4_boss_melee_timer matches 0 as @a at @s if entity @e[tag=stage-4_boss,distance=..10] run playsound entity.panda.sneeze master @s
execute if score .server elements_stage_4_boss_melee_timer matches 0 store result score .server elements_stage_4_boss_melee_timer run random value 40..100
execute if score .server elements_stage_4_boss_melee_timer matches 85 in elements:stage-4_bossroom run tellraw @a[distance=0..] ["",{"text": "Server: ","color": "yellow"},{"text": "Der Boss hat alle deinen Aktiven Effekte entfernt!","color": "white"}]
execute if score .server elements_stage_4_boss_melee_timer matches 85 in elements:stage-4_bossroom run effect clear @a[distance=0..,gamemode=!spectator]


execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] in elements:stage-4_bossroom run kill @e[tag=stage_4_boss_room_protection]
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] in elements:stage-4_bossroom run place template elements:boss_room/stage_4 -29 96 -27
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] in elements:stage-4_bossroom run tellraw @a[distance=0..] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Der Flinke Fuchs wurde besiegt!","color": "white"}]
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] in elements:stage-4_bossroom run tellraw @a[distance=0..,tag=elements_boss_spectator] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Bosskampf Beendet! Zuschauermodus verlassen."}]
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] in elements:stage-4_bossroom run scoreboard players set @a[distance=0..,tag=elements_boss_spectator] leave 2
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] run scoreboard players add .server elements_stats_stage_0_boss_killed 1
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] run scoreboard players add .server elements_stats_stage_4_boss_killed 1
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] run scoreboard players add @a[scores={elements_stage_4_boss_spawn-player=1},limit=1] elements_stats_stage_0_boss_killed 1
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] run scoreboard players add @a[scores={elements_stage_4_boss_spawn-player=1},limit=1] elements_stats_stage_4_boss_killed 1
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] run scoreboard players set @a[scores={elements_stage_4_boss_spawn-player=1}] elements_stage_4_boss_spawn-player 0
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] in elements:stage-2_bossroom run give @a[distance=0..,nbt={Inventory:[{id:"minecraft:mace"}]},gamemode=!spectator] breeze_rod 3
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] in elements:stage-4_bossroom run setblock 0 100 -1 air
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] if score .server elements_custom-items_shop_boss-frucht_remain matches 1 in elements:stage-4_bossroom run setblock 0 100 -1 chest[facing=east]{LootTable:"elements:items/boss_key_with_bossfrucht/stage_4"} replace
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] if score .server elements_custom-items_shop_boss-frucht_remain matches 0 in elements:stage-4_bossroom run setblock 0 100 -1 chest[facing=east]{LootTable:"elements:items/boss_key/stage_4"} replace
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] if score .server elements_custom-items_shop_boss-frucht_remain matches 1 run scoreboard players set .server elements_custom-items_shop_boss-frucht_remain 0
execute if score .server elements_stage_4_boss_status matches 1 unless entity @e[tag=stage-4_boss] run scoreboard players set .server elements_stage_4_boss_status 0

execute in elements:stage-4_bossroom if entity @e[tag=stage-4_boss] run bossbar set elements:stage-4_boss players @a[distance=0..]

execute in elements:stage-4_bossroom store result bossbar elements:stage-4_boss value run data get entity @n[tag=stage-4_boss] Health
execute in elements:stage-4_bossroom store result bossbar elements:stage-4_boss max run attribute @n[tag=stage-4_boss] max_health get 1

#execute in elements:stage-4_bossroom as @a[gamemode=!spectator,distance=0..,tag=!stage_4_boss_has_chicken] at @s run summon chicken ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,EggLayTime:99999999,Tags:["stage_4_boss_chicken"],attributes:[{id:"minecraft:scale",base:0.0625}],DeathLootTable:empty,active_effects:[{id:"regeneration",duration:-1,amplifier:255,show_particles:0b}]}
#execute in elements:stage-4_bossroom as @a[gamemode=!spectator,distance=0..,tag=!stage_4_boss_has_chicken] at @s run tag @s add stage_4_boss_has_chicken
#execute in elements:stage-4_bossroom as @a[gamemode=!spectator,distance=0..,tag=stage_4_boss_has_chicken] at @s run tp @n[type=chicken,tag=stage_4_boss_chicken,distance=..2.5] ~ ~2.1 ~
#execute in elements:stage-4_bossroom as @a[gamemode=!spectator,distance=0..,tag=stage_4_boss_has_chicken] at @s unless entity @n[type=chicken,tag=stage_4_boss_chicken,distance=..2.5] run say fail
#execute in elements:stage-4_bossroom as @a[gamemode=!spectator,distance=0..,tag=stage_4_boss_has_chicken] at @s unless entity @n[type=chicken,tag=stage_4_boss_chicken,distance=..2.5] run tag @s remove stage_4_boss_has_chicken
#execute in elements:stage-4_bossroom as @e[type=chicken,tag=stage_4_boss_chicken] at @s unless entity @a[gamemode=!spectator,distance=..2.5,tag=stage_4_boss_has_chicken] run kill @s

execute if score .server elements_stage_4_boss_melee_timer matches 39 run bossbar set elements:stage-4_boss players





# bossroom coords -29 96 -27