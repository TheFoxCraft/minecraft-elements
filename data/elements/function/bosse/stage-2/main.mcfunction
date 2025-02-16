#particle dust{color:[0.588,0.569,0.631],scale:1} -0.25 101.500 12.13 2.5 1.5 2.5 0 1000 normal


execute in elements:stage-2_bossroom unless entity @a[gamemode=!spectator,distance=0..] run kill @e[tag=stage-2_boss]
execute in elements:stage-2_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set #server elements_custom-items_shop_boss-frucht_remain 0
execute in elements:stage-2_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set @a elements_stage_2_boss_spawn-player 0
execute in elements:stage-2_bossroom unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players set #server elements_stage_2_boss_status 0

#execute as @e[type=#impact_projectiles] at @s if entity @e[tag=stage-2_boss,distance=..6.5] run particle explosion
#execute as @e[type=#impact_projectiles] at @s if entity @e[tag=stage-2_boss,distance=..6.5] run kill @s


execute if score #server elements_stage_2_boss_melee_timer matches 1.. run scoreboard players remove #server elements_stage_2_boss_melee_timer 1

#execute if score #server elements_stage_2_boss_melee_timer matches 0 as @e[tag=stage-2_boss] at @s run particle dust{color:[0.588,0.569,0.631],scale:1} ~ ~1.5 ~ 2.5 1.5 2.5 0 1000 normal
#execute if score #server elements_stage_2_boss_melee_timer matches 0 as @a at @s if entity @e[tag=stage-2_boss,distance=..6] run damage @s 2 minecraft:magic by @n[tag=stage-2_boss] from @n[tag=stage-2_boss]
#execute if score #server elements_stage_2_boss_melee_timer matches 0 as @a at @s if entity @e[tag=stage-2_boss,distance=..6] run playsound minecraft:enchant.thorns.hit master @s
#execute if score #server elements_stage_2_boss_melee_timer matches 0 store result score #server elements_stage_2_boss_melee_timer run random value 30..200


execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] in elements:stage-2_bossroom run tellraw @a[distance=0..] [{"text": "Server: ","color": "yellow"},{"text": "Die Rießige Plasma-Blaze wurde besiegt!","color": "white"}]
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] run scoreboard players add #server elements_stats_stage_0_boss_killed 1
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] run scoreboard players add #server elements_stats_stage_2_boss_killed 1
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] run scoreboard players add @a[scores={elements_stage_2_boss_spawn-player=1},limit=1] elements_stats_stage_0_boss_killed 1
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] run scoreboard players add @a[scores={elements_stage_2_boss_spawn-player=1},limit=1] elements_stats_stage_2_boss_killed 1
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] run scoreboard players set @a[scores={elements_stage_2_boss_spawn-player=1}] elements_stage_2_boss_spawn-player 0
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] if score #server elements_custom-items_shop_boss-frucht_remain matches 1 in elements:stage-2_bossroom run setblock 0 101 -1 chest[facing=east]{LootTable:"elements:stage-2_boss_key"} replace
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] if score #server elements_custom-items_shop_boss-frucht_remain matches 0 in elements:stage-2_bossroom run setblock 0 101 -1 chest[facing=east]{LootTable:"elements:items/boss_key/stage_2"} replace
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] if score #server elements_custom-items_shop_boss-frucht_remain matches 1 run scoreboard players set #server elements_custom-items_shop_boss-frucht_remain 0
execute if score #server elements_stage_2_boss_status matches 1 unless entity @e[tag=stage-2_boss] run scoreboard players set #server elements_stage_2_boss_status 0

execute in elements:stage-2_bossroom as @a[distance=0..] if entity @e[tag=stage-2_boss] run bossbar set elements:stage-2_boss players @s

execute in elements:stage-2_bossroom store result bossbar elements:stage-2_boss value run data get entity @n[tag=stage-2_boss] Health
execute in elements:stage-2_bossroom store result bossbar elements:stage-2_boss max run attribute @n[tag=stage-2_boss] max_health get 1



execute if score #server elements_stage_2_boss_melee_timer matches 39 run bossbar set elements:stage-2_boss players