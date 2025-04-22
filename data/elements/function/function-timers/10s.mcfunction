#functions

execute as @a unless score @s elements_farm-slots_stage-4_slots matches 0.. run scoreboard players set @s elements_farm-slots_stage-4_slots 0

execute as @a[nbt={Inventory:[{id:"minecraft:rabbit_stew",components:{"minecraft:custom_model_data":1}}],foodLevel:0}] run function elements:custom-items/mana-items/magische-schale

#autorecycler

# fish
#execute as @a[scores={elements_inv_fishing_token=64..,elements_autocompactor=1,elements_autorecycler=1}] run function elements:spawn/recycler/autorecycler_fishing_token
# stage 1
execute as @a[scores={elements_inv_compressed_cobblestone=64..,elements_autocompactor=1,elements_autorecycler=1}] run function elements:spawn/recycler/autorecycler_stage_1
# stage 2
execute as @a[scores={elements_inv_compressed_wood=64..,elements_autocompactor=2,elements_autorecycler=1}] run function elements:spawn/recycler/autorecycler_stage_2
# stage 3
execute as @a[scores={elements_inv_compressed_crimson_vines=64..,elements_autocompactor=3,elements_autorecycler=1}] run function elements:spawn/recycler/autorecycler_stage_3
# stage 4
execute as @a[scores={elements_inv_compressed_sweet_berries=64..,elements_autocompactor=4,elements_autorecycler=1}] run function elements:spawn/recycler/autorecycler_stage_4



#abgaben dynamic goals

#pre-building
scoreboard players set .server elements_abgabe_start_steinmetz_goal 256
scoreboard players operation .server elements_abgabe_start_steinmetz_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_start_mitte_goal 8
scoreboard players operation .server elements_abgabe_start_mitte_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_start_boden1_goal 8
scoreboard players operation .server elements_abgabe_start_boden1_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_start_boden2_goal 16
scoreboard players operation .server elements_abgabe_start_boden2_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_start_saeulen_goal 16
scoreboard players operation .server elements_abgabe_start_saeulen_goal *= .server elements_playercount

#shops
scoreboard players set .server elements_abgabe_shop_titus_goal 64
scoreboard players operation .server elements_abgabe_shop_titus_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_shop_clementius_goal 64
scoreboard players operation .server elements_abgabe_shop_clementius_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_shop_mystery_goal 96
scoreboard players operation .server elements_abgabe_shop_mystery_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_shop_leer_goal 128
scoreboard players operation .server elements_abgabe_shop_leer_goal *= .server elements_playercount

#community-hub
scoreboard players set .server elements_abgabe_other_levelbaum_goal 10
scoreboard players operation .server elements_abgabe_other_levelbaum_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_other_community-hub-main_goal 2000
scoreboard players operation .server elements_abgabe_other_community-hub-main_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_other_angel-teich_goal 100
scoreboard players operation .server elements_abgabe_other_angel-teich_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_other_recycler_goal 1000
scoreboard players operation .server elements_abgabe_other_recycler_goal *= .server elements_playercount

# stages
scoreboard players set .server elements_abgabe_stage_2_gang_goal 500
scoreboard players operation .server elements_abgabe_stage_2_gang_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_stage_2_goal 100
scoreboard players operation .server elements_abgabe_stage_2_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_stage_3_goal 400
scoreboard players operation .server elements_abgabe_stage_3_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_stage_4_gang_goal 2000
scoreboard players operation .server elements_abgabe_stage_4_gang_goal *= .server elements_playercount

scoreboard players set .server elements_abgabe_stage_4_goal 200
scoreboard players operation .server elements_abgabe_stage_4_goal *= .server elements_playercount