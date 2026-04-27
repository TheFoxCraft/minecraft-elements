#particle dust{color:[0.588,0.569,0.631],scale:1} -0.25 100.500 12.13 2.5 1.5 2.5 0 1000 normal


execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run kill @e[tag=final-boss_boss]
execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set .server elements_custom-items_shop_boss-frucht_remain 0
execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set @a elements_final-boss_boss_spawn-player 0
execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run tellraw @a[distance=0..,tag=elements_boss_spectator] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Bosskampf Beendet! Zuschauermodus verlassen."}]
execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run kill @e[tag=warden_helper]
execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run place template elements:boss_room/final-boss -43 95 -32


execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run setblock 0 100 -1 air
execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set @a[distance=0..,tag=elements_boss_spectator] leave 2
execute in elements:final_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set .server elements_final-boss_boss_status 0


execute if score .server elements_final-boss_boss_melee_timer matches 1.. run scoreboard players remove .server elements_final-boss_boss_melee_timer 1

execute if score .server elements_final-boss_boss_melee_timer matches 0 as @e[tag=final-boss_boss] at @s run particle sonic_boom ~ ~ ~ 4 4 4 0 20 normal
execute if score .server elements_final-boss_boss_melee_timer matches 0 as @a at @s if entity @e[tag=final-boss_boss,distance=..10] run damage @s 100 elements:boss_final
execute if score .server elements_final-boss_boss_melee_timer matches 0 as @a at @s if entity @e[tag=final-boss_boss,distance=..10] run playsound minecraft:enchant.thorns.hit master @s
execute if score .server elements_final-boss_boss_melee_timer matches 0 store result score .server elements_final-boss_boss_melee_timer run random value 40..100

execute if entity @e[tag=warden_invincible] run data modify entity @e[tag=final-boss_boss,limit=1] Invulnerable set value 1b
execute if entity @e[tag=warden_invincible] at @e[tag=final-boss_boss,limit=1] run particle flame ~ ~1.5 ~ 1 1 1 0 10
execute unless entity @e[tag=warden_invincible] run data modify entity @e[tag=final-boss_boss,limit=1] Invulnerable set value 0b


execute if score .server elements_final-boss_boss_attack_timer matches 1.. run scoreboard players remove .server elements_final-boss_boss_attack_timer 1
execute if score .server elements_final-boss_boss_attack_timer matches 0 as @e[tag=final-boss_boss] at @s run function elements:bosse/final-boss/choose_attack
execute if score .server elements_final-boss_boss_attack_timer matches 0 store result score .server elements_final-boss_boss_attack_timer run random value 100..150


execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom run kill @e[tag=warden_helper]
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom run place template elements:boss_room/final-boss -43 95 -32
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom run tellraw @a[distance=0..] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Der Mächtige Warden wurde besiegt!","color": "white"}]
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom run tellraw @a[distance=0..,tag=elements_boss_spectator] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Bosskampf Beendet! Zuschauermodus verlassen."}]
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom run scoreboard players set @a[distance=0..,tag=elements_boss_spectator] leave 2
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] run scoreboard players add .server elements_stats_stage_0_boss_killed 1
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] run scoreboard players add .server elements_stats_final_boss_killed 1
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] run scoreboard players add @a[scores={elements_final-boss_boss_spawn-player=1},limit=1] elements_stats_stage_0_boss_killed 1
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] run scoreboard players add @a[scores={elements_final-boss_boss_spawn-player=1},limit=1] elements_stats_final_boss_killed 1
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] run scoreboard players set @a[scores={elements_final-boss_boss_spawn-player=1}] elements_final-boss_boss_spawn-player 0
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom run give @a[distance=0..,nbt={Inventory:[{id:"minecraft:mace"}]},gamemode=!spectator] breeze_rod 10
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom run setblock 0 100 -1 air
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] if score .server elements_custom-items_shop_boss-frucht_remain matches 1 in elements:final_bossroom run setblock 0 100 -1 chest[facing=east]{LootTable:"elements:items/boss_key_with_bossfrucht/final-boss"} replace
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] if score .server elements_custom-items_shop_boss-frucht_remain matches 0 in elements:final_bossroom run setblock 0 100 -1 chest[facing=east]{LootTable:"elements:items/boss_key/final-boss"} replace
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] if score .server elements_custom-items_shop_boss-frucht_remain matches 1 run scoreboard players set .server elements_custom-items_shop_boss-frucht_remain 0
# FIRST KILL
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] if score .server elements_projectFinished matches 0 run function elements:bosse/final-boss/first_kill

execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] in elements:final_bossroom positioned 0 100 0 run spreadplayers 0 0 1 7 under 105 false @a[distance=0..,gamemode=!spectator]
execute if score .server elements_final-boss_boss_status matches 1 unless entity @e[tag=final-boss_boss] run scoreboard players set .server elements_final-boss_boss_status 0

execute in elements:final_bossroom if entity @e[tag=final-boss_boss] run bossbar set elements:final_boss players @a[distance=0..]

execute in elements:final_bossroom store result bossbar elements:final_boss value run data get entity @n[tag=final-boss_boss] Health
execute in elements:final_bossroom store result bossbar elements:final_boss max run attribute @n[tag=final-boss_boss] max_health get 1


execute if score .server elements_final-boss_boss_melee_timer matches 39 run bossbar set elements:final_boss players





# bossroom coords -20 97 -21