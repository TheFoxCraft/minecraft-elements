execute as @e[tag=follow] at @s run rotate @s facing entity @p feet
scoreboard players enable @a z_just-ignore
tellraw @a[scores={z_just-ignore=1}] {"text": "Ich hab doch gesagt IGNORIEREN!","color": "red"}
title @a[scores={z_just-ignore=1}] title {"text": "Ich hab doch gesagt IGNORIEREN","color": "red"} 
scoreboard players set @a[scores={z_just-ignore=1}] z_just-ignore 0

scoreboard players set #fixed_100 elements_fixed 100

execute in elements:ocean run gamemode survival @a[distance=0..,gamemode=adventure]
execute in elements:nether run gamemode survival @a[distance=0..,gamemode=adventure]
execute in elements:stone run gamemode survival @a[distance=0..,gamemode=adventure]
execute in elements:sky run gamemode survival @a[distance=0..,gamemode=adventure]
execute in elements:hub run gamemode adventure @a[distance=0..,gamemode=survival]
execute in elements:stage-1_bossroom run gamemode adventure @a[distance=0..,gamemode=survival]
execute in elements:stage-2_bossroom run gamemode adventure @a[distance=0..,gamemode=survival]
execute in elements:stage-3_bossroom run gamemode adventure @a[distance=0..,gamemode=survival]

execute as @a[scores={elements_homedimension=0},nbt={Dimension:"minecraft:overworld"}] if score .server elements_setup matches 1.. in elements:hub run tp 0 101 0
execute as @a[scores={elements_homedimension=4},nbt={Dimension:"minecraft:overworld"}] if score .server elements_setup matches 1.. in elements:nether run tp 0 100 0
execute as @a[scores={elements_homedimension=2},nbt={Dimension:"minecraft:overworld"}] if score .server elements_setup matches 1.. in elements:stone run tp 0 100 0
execute as @a[scores={elements_homedimension=3},nbt={Dimension:"minecraft:overworld"}] if score .server elements_setup matches 1.. in elements:sky run tp 0 100 0
execute as @a[scores={elements_homedimension=1},nbt={Dimension:"minecraft:overworld"}] if score .server elements_setup matches 1.. in elements:ocean run tp 0 61 0


execute in elements:nether as @a[distance=0..] run scoreboard players set @s elements_dimension 4
execute in elements:stone as @a[distance=0..] run scoreboard players set @s elements_dimension 2
execute in elements:sky as @a[distance=0..] run scoreboard players set @s elements_dimension 3
execute in elements:hub as @a[distance=0..] run scoreboard players set @s elements_dimension 0
execute in elements:ocean as @a[distance=0..] run scoreboard players set @s elements_dimension 1

#inventory checks
execute as @a store result score @s elements_inv_compressed_cobblestone run clear @s minecraft:cobbled_deepslate[custom_model_data=1] 0
execute as @a store result score @s elements_inv_small_heal_pot run clear @s minecraft:potion[custom_model_data=1] 0
execute as @a store result score @s elements_inv_big_heal_pot run clear @s minecraft:potion[custom_model_data=3] 0
execute as @a store result score @s elements_inv_manatrank run clear @s minecraft:potion[custom_model_data=11] 0
execute as @a store result score @s elements_inv_compressed_wood run clear @s minecraft:oak_wood[custom_model_data=1] 0
execute as @a store result score @s elements_inv_compressed_crimson_vines run clear @s minecraft:nether_wart_block[custom_model_data=1] 0
execute as @a store result score @s elements_inv_crimson_vines run clear @s minecraft:crimson_roots[custom_model_data=1] 0
execute as @a store result score @s elements_inv_cobblestone run clear @s minecraft:cobblestone 0
execute as @a store result score @s elements_inv_basalt run clear @s minecraft:basalt 0
execute as @a store result score @s elements_inv_stone run clear @s minecraft:stone 0
execute as @a store result score @s elements_inv_oaklog run clear @s minecraft:oak_log 0
execute as @a store result score @s elements_inv_bonemeal run clear @s minecraft:bone_meal 0
execute as @a store result score @s elements_inv_fake_bonemeal run clear @s white_dye[custom_model_data=1] 0
execute as @a store result score @s elements_inv_sprucelog run clear @s minecraft:spruce_log 0
execute as @a store result score @s elements_inv_dark_oaklog run clear @s minecraft:dark_oak_log 0
execute as @a store result score @s elements_inv_cobblestone run clear @s minecraft:cobblestone 0
execute as @a store result score @s elements_inv_basalt run clear @s minecraft:basalt 0
execute as @a store result score @s elements_inv_stone run clear @s minecraft:stone 0
execute as @a store result score @s elements_inv_oaklog run clear @s minecraft:oak_log 0
execute as @a store result score @s elements_inv_bonemeal run clear @s minecraft:bone_meal 0
execute as @a store result score @s elements_inv_bone run clear @s minecraft:bone 0
execute as @a store result score @s elements_inv_rotten_flesh run clear @s minecraft:rotten_flesh 0
execute as @a store result score @s elements_inv_gunpowder run clear @s minecraft:gunpowder 0
execute as @a store result score @s elements_inv_iron_ingot run clear @s minecraft:iron_ingot 0
execute as @a store result score @s elements_inv_copper_ingot run clear @s minecraft:copper_ingot 0
execute as @a store result score @s elements_inv_diamond run clear @s minecraft:diamond 0
execute as @a store result score @s elements_inv_emerald run clear @s minecraft:emerald 0
execute as @a store result score @s elements_inv_ancient_debris run clear @s minecraft:ancient_debris 0
execute as @a store result score @s elements_inv_infinity_book run clear @s enchanted_book[stored_enchantments={infinity:1}] 0
execute as @a store result score @s elements_inv_fish run clear @s #fishes 0
execute as @a store result score @s elements_inv_stone_stage_1 run clear @s #elements:stage_1_stone 0
execute as @a store result score @s elements_inv_fishing_token run clear @s pufferfish[custom_model_data=1] 0
execute as @a store result score @s elements_inv_compressed_sweet_berries run clear @s red_glazed_terracotta[custom_model_data=1] 0
execute as @a store result score @s elements_inv_sweet_berries run clear @s sweet_berries 0

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1}}}] at @s run function elements:custom-items/shop/sky/sauger/show_size


execute as @a if score @s elements_stats_maxlevel < @s elements_mainlevel run scoreboard players operation @s elements_stats_maxlevel = @s elements_mainlevel
execute as @a if score .server elements_stats_servermaxlevel < @s elements_mainlevel run scoreboard players operation .server elements_stats_servermaxlevel = @s elements_mainlevel

scoreboard players set .server elements_stats_serverlevel 0
scoreboard players operation .server elements_stats_serverlevel += @a elements_mainlevel

# set values from server to all players
scoreboard players operation @a elements_stage = .server elements_stage
scoreboard players operation @a elements_uniqueitem_bosse_taubenkacke = .server elements_uniqueitem_bosse_taubenkacke
scoreboard players operation @a elements_uniqueitem_bosse_tomorrowland_karte = .server elements_uniqueitem_bosse_tomorrowland_karte
scoreboard players operation @a elements_uniqueitem_bosse_amboesse = .server elements_uniqueitem_bosse_amboesse



execute if score .server elements_stage matches 1.. as @a run scoreboard players add @s elements_stats_playtime_ticks 1
execute as @a[scores={elements_stats_playtime_ticks=20..}] run scoreboard players add @s elements_stats_playtime_sec 1
execute as @a[scores={elements_stats_playtime_ticks=20..}] run scoreboard players remove @s elements_stats_playtime_ticks 20
execute as @a[scores={elements_stats_playtime_sec=60..}] run scoreboard players add @s elements_stats_playtime_min 1
execute as @a[scores={elements_stats_playtime_sec=60..}] run scoreboard players remove @s elements_stats_playtime_sec 60
execute as @a[scores={elements_stats_playtime_min=60..}] run scoreboard players add @s elements_stats_playtime_h 1
execute as @a[scores={elements_stats_playtime_min=60..}] run scoreboard players remove @s elements_stats_playtime_min 60

execute if score .server elements_stage matches 1.. as @a run scoreboard players add .server elements_stats_playtime_ticks 1
execute if score .server elements_stats_playtime_ticks matches 20.. run scoreboard players add .server elements_stats_playtime_sec 1
execute if score .server elements_stats_playtime_ticks matches 20.. run scoreboard players remove .server elements_stats_playtime_ticks 20
execute if score .server elements_stats_playtime_sec matches 60.. run scoreboard players add .server elements_stats_playtime_min 1
execute if score .server elements_stats_playtime_sec matches 60.. run scoreboard players remove .server elements_stats_playtime_sec 60
execute if score .server elements_stats_playtime_min matches 60.. run scoreboard players add .server elements_stats_playtime_h 1
execute if score .server elements_stats_playtime_min matches 60.. run scoreboard players remove .server elements_stats_playtime_min 60



execute in elements:hub run particle minecraft:cherry_leaves 0.53 110.00 0.56 20 1 20 0 10 normal @a[nbt={Dimension:"elements:hub"}]
execute in elements:ocean positioned 0.50 61.00 0.50 run effect give @a[distance=..30] water_breathing 10 0 true

#effects
execute as @a[scores={elements_custom-items_shop_hastetrank_enable=1}] run effect give @s haste 1 2 true
execute as @a[scores={elements_custom-items_shop_water-breathing_enable=1}] run effect give @s water_breathing 1 0 true
execute as @a[scores={elements_custom-items_shop_luck-potion_enable=1}] run effect give @s luck 1 49 true


#calc stats

##collections
execute as @a[scores={elements_collections_calc_stone=1..}] run scoreboard players add @s elements_collections_stats_stone_total 1
execute as @a[scores={elements_collections_calc_stone=1..}] run scoreboard players remove @s elements_collections_calc_stone 1
execute as @a[scores={elements_collections_calc_cobblestone=1..}] run scoreboard players add @s elements_collections_stats_stone_total 1
execute as @a[scores={elements_collections_calc_cobblestone=1..}] run scoreboard players remove @s elements_collections_calc_cobblestone 1
execute as @a[scores={elements_collections_calc_basalt=1..}] run scoreboard players add @s elements_collections_stats_stone_total 1
execute as @a[scores={elements_collections_calc_basalt=1..}] run scoreboard players remove @s elements_collections_calc_basalt 1

execute as @a[scores={elements_collections_calc_crimson_vines=1..}] run scoreboard players add @s elements_collections_stats_crimson_vines_total 1
execute as @a[scores={elements_collections_calc_crimson_vines=1..}] run scoreboard players remove @s elements_collections_calc_crimson_vines 1
execute as @a[scores={elements_collections_calc_crimson_vines_plant=1..}] run scoreboard players add @s elements_collections_stats_crimson_vines_total 1
execute as @a[scores={elements_collections_calc_crimson_vines_plant=1..}] run scoreboard players remove @s elements_collections_calc_crimson_vines_plant 1


# all time level erhalten
execute as @a store result score @s elements_stats_level_erhalten_calc_get run xp query @s levels
execute as @a if score @s elements_stats_level_erhalten_calc_get > @s elements_stats_level_erhalten_calc_get_old run scoreboard players operation @s elements_stats_level_erhalten_calc = @s elements_stats_level_erhalten_calc_get
execute as @a if score @s elements_stats_level_erhalten_calc_get > @s elements_stats_level_erhalten_calc_get_old run scoreboard players operation @s elements_stats_level_erhalten_calc -= @s elements_stats_level_erhalten_calc_get_old
execute as @a if score @s elements_stats_level_erhalten_calc_get > @s elements_stats_level_erhalten_calc_get_old run scoreboard players operation @s elements_stats_level_erhalten += @s elements_stats_level_erhalten_calc
execute as @a run scoreboard players operation @s elements_stats_level_erhalten_calc_get_old = @s elements_stats_level_erhalten_calc_get

# all time level ausgegeben (ausgenommen tode)
execute as @a store result score @s elements_stats_level_ausgegeben_calc_get run xp query @s levels
execute as @a if score @s elements_stats_level_ausgegeben_calc_get < @s elements_stats_level_ausgegeben_calc_get_old run scoreboard players operation @s elements_stats_level_ausgegeben_calc = @s elements_stats_level_ausgegeben_calc_get_old
execute as @a if score @s elements_stats_level_ausgegeben_calc_get < @s elements_stats_level_ausgegeben_calc_get_old run scoreboard players operation @s elements_stats_level_ausgegeben_calc -= @s elements_stats_level_ausgegeben_calc_get
execute as @a if score @s elements_stats_level_ausgegeben_calc_get < @s elements_stats_level_ausgegeben_calc_get_old run scoreboard players operation @s elements_stats_level_ausgegeben += @s elements_stats_level_ausgegeben_calc
execute as @a run scoreboard players operation @s elements_stats_level_ausgegeben_calc_get_old = @s elements_stats_level_ausgegeben_calc_get




#kill adminwand as item
kill @e[type=item,nbt={Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":100}}}]

# excalibur clear
execute as @e[type=item_display,tag=elements_mystery_excalibur_sword] run scoreboard players add @s elements_custom-items_mystery_excalibur_sword_despawn 1
execute as @e[type=item_display,tag=elements_mystery_excalibur_sword,scores={elements_custom-items_mystery_excalibur_sword_despawn=200..}] run kill @s


#dimension-team set
execute if score .server elements_override_by_dd matches 0 as @a[scores={elements_homedimension=1},team=!elements_ocean] run team join elements_ocean
execute if score .server elements_override_by_dd matches 0 as @a[scores={elements_homedimension=2},team=!elements_stone] run team join elements_stone
execute if score .server elements_override_by_dd matches 0 as @a[scores={elements_homedimension=3},team=!elements_sky] run team join elements_sky
execute if score .server elements_override_by_dd matches 0 as @a[scores={elements_homedimension=4},team=!elements_nether] run team join elements_nether


#disable entity drops
execute as @e[type=minecraft:zombified_piglin] run data merge entity @s {HandDropChances:[0.0f,0.0f]}
execute as @e[type=minecraft:drowned,nbt={HandItems:[{id:"minecraft:trident"}]}] run data merge entity @s {HandDropChances:[0.0f,0.0f]}

#show gruppenziel
bossbar set elements:gruppenziel_total players @a[scores={elements_settings_gruppengoal_show=3}]
bossbar set elements:gruppenziel_hub players @a[scores={elements_settings_gruppengoal_show=2},nbt={Dimension:"elements:hub"}]

#double-click cooldown
execute as @a[scores={elements_custom_doubleclick_cooldown=1..}] run scoreboard players remove @s elements_custom_doubleclick_cooldown 1
#actionbar pause for constant notifications
execute as @a[scores={elements_sonstiges_actionbar_pause=1..}] run scoreboard players remove @s elements_sonstiges_actionbar_pause 1


#guardian spawning fishing
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":2}}}] at @s if score .server elements_stage matches ..1 run summon guardian ~ ~ ~ {DeathLootTable:"elements:items/fishing/guardians/stage_1",Tags:["elements_guardian"],PersistenceRequired:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":2}}}] at @s if score .server elements_stage matches 2 run summon guardian ~ ~ ~ {DeathLootTable:"elements:items/fishing/guardians/stage_2",Tags:["elements_guardian"],PersistenceRequired:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":2}}}] at @s if score .server elements_stage matches 3.. run summon guardian ~ ~ ~ {DeathLootTable:"elements:items/fishing/guardians/stage_3",Tags:["elements_guardian"],PersistenceRequired:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_model_data":2}}}] run kill @s


#sauger workaround
execute as @a[scores={elements_custom-items_shop_sauger_click=1..}] run function elements:custom-items/shop/sky/sauger/trigger
execute as @a[scores={elements_custom-items_shop_sauger_click=1..}] run scoreboard players remove @s elements_custom-items_shop_sauger_click 1

#credits
bossbar set elements:credits players @a[scores={elements_settings_credits=3}]
bossbar set elements:credits_hide players @a[scores={elements_settings_credits=3}]
bossbar set elements:credits_small players @a[scores={elements_settings_credits=2}]

#cam-accs
execute as @a[scores={elements_rank_cam=1}] unless score @s elements_rank_admin matches 1 run gamemode spectator @s
#dimension-switch
execute as @a[scores={elements_rank_cam=1}] run scoreboard players enable @s Dimension-Switch
execute as @a[scores={elements_rank_cam=0}] run scoreboard players reset @s Dimension-Switch
execute as @a[scores={Dimension-Switch=1}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"translate": "elements.chat.cam_acc.dimension_switch.message.main"}]
execute as @a[scores={Dimension-Switch=1}] run tellraw @s ["",{"translate": "elements.chat.cam_acc.dimension_switch.message.ocean","hoverEvent": {"action": "show_text","contents": "Klicke zum Teleportieren!"},"clickEvent": {"action": "run_command","value": "/trigger Dimension-Switch set 2"}}]
execute as @a[scores={Dimension-Switch=1}] run tellraw @s ["",{"translate": "elements.chat.cam_acc.dimension_switch.message.stone","hoverEvent": {"action": "show_text","contents": "Klicke zum Teleportieren!"},"clickEvent": {"action": "run_command","value": "/trigger Dimension-Switch set 3"}}]
execute as @a[scores={Dimension-Switch=1}] run tellraw @s ["",{"translate": "elements.chat.cam_acc.dimension_switch.message.sky","hoverEvent": {"action": "show_text","contents": "Klicke zum Teleportieren!"},"clickEvent": {"action": "run_command","value": "/trigger Dimension-Switch set 4"}}]
execute as @a[scores={Dimension-Switch=1}] run tellraw @s ["",{"translate": "elements.chat.cam_acc.dimension_switch.message.nether","hoverEvent": {"action": "show_text","contents": "Klicke zum Teleportieren!"},"clickEvent": {"action": "run_command","value": "/trigger Dimension-Switch set 5"}}]
execute as @a[scores={Dimension-Switch=1}] run tellraw @s ["",{"translate": "elements.chat.cam_acc.dimension_switch.message.hub","hoverEvent": {"action": "show_text","contents": "Klicke zum Teleportieren!"},"clickEvent": {"action": "run_command","value": "/trigger Dimension-Switch set 6"}}]
#teleports
execute as @a[scores={Dimension-Switch=2}] in elements:ocean run tp 0 62 0
execute as @a[scores={Dimension-Switch=3}] in elements:stone run tp 0 101 0
execute as @a[scores={Dimension-Switch=4}] in elements:sky run tp 0 101 0
execute as @a[scores={Dimension-Switch=5}] in elements:nether run tp 0 101 0
execute as @a[scores={Dimension-Switch=6}] in elements:hub run tp 0 101 0

execute as @a[scores={Dimension-Switch=1..}] run scoreboard players reset @s Dimension-Switch

#no bonemeal
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run attribute @s block_interaction_range modifier add minecraft:elements_no_bonemeal_mainhand -1 add_multiplied_base
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run attribute @s block_interaction_range modifier remove minecraft:elements_no_bonemeal_mainhand
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:bone_meal",Slot:-106b}]}] run attribute @s block_interaction_range modifier add minecraft:elements_no_bonemeal_offhand -1 add_multiplied_base
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:bone_meal",Slot:-106b}]}] run attribute @s block_interaction_range modifier remove minecraft:elements_no_bonemeal_offhand


execute as @a[scores={elements_inv_bonemeal=1..},predicate=!elements:is_in_hub] run function elements:sonstiges/savely_give_loot {id:"elements:items/other/bonemeal"}
execute as @a[scores={elements_inv_bonemeal=1..},predicate=!elements:is_in_hub] run clear @s bone_meal 1


## handelsmarkt
#kill dropped items
execute store success score .server elements_enderchest_handelsplatz_reload_offers run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{handelsmarkt_item:true}}}}]
execute if score .server elements_enderchest_handelsplatz_reload_offers matches 1 run scoreboard players set @a[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] elements_enderchest_handelsplatz_reload_offers 1
# reload offers
execute as @a[scores={elements_enderchest_handelsplatz_reload_offers=1}] if score @s elements_enderchest_handelsplatz_interface matches 0 if score @s elements_enderchest_interface_number matches 10 run function elements:enderchest/handelsplatz/load
execute as @a[scores={elements_enderchest_handelsplatz_reload_offers=1}] run scoreboard players set @s elements_enderchest_handelsplatz_reload_offers 0
# give sold tokens
# managed in function timer 5s


# no armor drops with element sword

#execute as @e[type=zombie,nbt={Health:0.0f}] run function elements:sonstiges/no_armor_drops_with_element_sword
#execute as @e[type=skeleton,nbt={Health:0.0f}] run function elements:sonstiges/no_armor_drops_with_element_sword

execute as @a[scores={elements_enderchest_settings_return_after_close=2}] run function elements:sonstiges/enderchest_return_after_close/check_change


#dasdatapack
execute as @a run scoreboard players operation @s dd_rank_cam = @s elements_rank_cam


