execute if score .server elements_spawn_shop_leer_timer_tick matches 1.. run scoreboard players remove .server elements_spawn_shop_leer_timer_tick 1
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1.. run scoreboard players remove .server elements_spawn_shop_leer_timer-2_tick 1

execute if score .server elements_spawn_shop_leer_timer_tick matches 0 if score .server elements_spawn_shop_leer_timer_min matches 1.. run scoreboard players remove .server elements_spawn_shop_leer_timer_min 1
execute if score .server elements_spawn_shop_leer_timer_tick matches 0 run scoreboard players set .server elements_spawn_shop_leer_timer_tick 1200


execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 if score .server elements_spawn_shop_leer_number matches 3 in elements:hub run setblock 17 100 -10 air
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 if score .server elements_spawn_shop_leer_number matches 3 in elements:hub run setblock 17 101 -12 air
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 in elements:hub run place template elements:hub/aufbau_shop_leer_fertig 10 100 -12
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 in elements:hub run particle dust_color_transition{from_color:[1.000,.000,0.000],scale:3,to_color:[1.000,0.000,0.000]} 15.5 100.00 -9.5 2.5 3 2 0 1000
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 run kill @e[tag=leer_shop_all]
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 if score .server elements_spawn_shop_leer_number matches 2 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Der Bauarbeiter im HUB ist wieder verschwunden!"}]
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 if score .server elements_spawn_shop_leer_number matches 3 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Der Archäologe im HUB ist wieder verschwunden!"}]
execute if score .server elements_spawn_shop_leer_timer-2_tick matches 1 if score .server elements_spawn_shop_leer_number matches 1 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Der Tierzüchter im HUB ist wieder verschwunden!"}]


execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 1 in elements:hub run place template elements:hub/aufbau_shop_leer_bauarbeiter 10 100 -12
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 2 in elements:hub run place template elements:hub/aufbau_shop_leer_archaeologe 10 100 -12
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 3 in elements:hub run place template elements:hub/aufbau_shop_leer_tierzuechter 10 100 -12
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 1 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Bauarbeiter hat sich für kurze Zeit den freien Shop im HUB gemietet!"}]
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 2 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Archäologe hat sich für kurze Zeit den freien Shop im HUB gemietet!"}]
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 3 run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"text": "Ein Tierzüchter hat sich für kurze Zeit den freien Shop im HUB gemietet!"}]
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 1 in elements:hub run summon villager 15.5 100.00 -9.5 {NoAI:1b,Invulnerable:1b,CanPickUpLoot:0b,Tags:["leer_shop_all","leer_shop_bauarbeiter","follow"],CustomName:'{"color":"gold","text":"Bauarbeiter"}',VillagerData:{level:99,profession:"minecraft:toolsmith",type:"minecraft:savanna"},Offers:{Recipes:[\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:granite",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diorite",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:andesite",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:calcite",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:tuff",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:deepslate",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:bricks",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:packed_mud",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dripstone_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:red_sand",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:netherrack",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:sea_lantern",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:prismarine",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:prismarine_bricks",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dark_prismarine",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:quartz_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:terracotta",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:purpur_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:end_stone",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:horn_coral_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:tube_coral_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:brain_coral_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:bubble_coral_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:fire_coral_block",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:ice",count:64}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:snowball",count:16}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:ochre_froglight",count:16}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:verdant_froglight",count:16}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:pearlescent_froglight",count:16}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:end_rod",count:16}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:light",count:16}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:obsidian",count:8}},\
{rewardExp:0b,maxUses:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crying_obsidian",count:8}}]}}
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 2 in elements:hub run summon villager 15.5 100.00 -9.5 {NoAI:1b,Invulnerable:1b,CanPickUpLoot:0b,Tags:["leer_shop_all","leer_shop_archaeologe","follow"],CustomName:'{"color":"gold","text":"Archäologe"}',VillagerData:{level:99,profession:"minecraft:toolsmith",type:"minecraft:savanna"},Offers:{Recipes:[\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:angler_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:archer_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:arms_up_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:blade_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:brewer_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:burn_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:danger_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:explorer_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:flow_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:friend_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:guster_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:heart_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:heartbreak_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:howl_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:miner_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:mourner_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:plenty_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:prize_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:scrape_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:sheaf_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:shelter_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:skull_pottery_sherd",count:1}},\
{rewardExp:0b,maxUses:8,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:snort_pottery_sherd",count:1}}]}}
execute if score .server elements_spawn_shop_leer_timer_min matches 0 if score .server elements_spawn_shop_leer_number matches 3 in elements:hub run summon villager 15.5 100.00 -9.5 {NoAI:1b,Invulnerable:1b,CanPickUpLoot:0b,Tags:["leer_shop_all","leer_shop_tierzuechter","follow"],CustomName:'{"color":"gold","text":"Tierzüchter"}',VillagerData:{level:99,profession:"minecraft:toolsmith",type:"minecraft:savanna"},Offers:{Recipes:[\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:cow_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:sheep_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:pig_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:chicken_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:horse_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:donkey_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:llama_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:goat_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:10},sell:{id:"minecraft:camel_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:wolf_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:10},sell:{id:"minecraft:armadillo_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:10},sell:{id:"minecraft:bee_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:cat_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:fox_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:48},sell:{id:"minecraft:fox_spawn_egg",count:1,components:{"minecraft:item_name":'"Schnee-Fuchs Spawn Egg"',"minecraft:entity_data":{id:"minecraft:fox",Type:"snow"}}}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:salmon_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:cod_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:tropical_fish_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:pufferfish_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:dolphin_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:10},sell:{id:"minecraft:axolotl_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:frog_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:mooshroom_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:15},sell:{id:"minecraft:ocelot_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:15},sell:{id:"minecraft:panda_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:panda",MainGene:"normal",HiddenGene:"normal"}}}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:10},sell:{id:"minecraft:parrot_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:rabbit_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:15},sell:{id:"minecraft:polar_bear_spawn_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:sniffer_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:20},sell:{id:"minecraft:turtle_egg",count:1}},\
{rewardExp:0b,maxUses:4,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:allay_spawn_egg",count:1}}]}}

execute if score .server elements_spawn_shop_leer_timer_min matches 0 run scoreboard players add .server elements_spawn_shop_leer_number 1
execute if score .server elements_spawn_shop_leer_timer_min matches 0 in elements:hub run particle dust_color_transition{from_color:[0.000,1.000,0.000],scale:3,to_color:[0.000,1.000,0.000]} 15.5 100.00 -9.5 2.5 3 2 0 1000
execute if score .server elements_spawn_shop_leer_number matches 4 run scoreboard players set .server elements_spawn_shop_leer_number 1
execute if score .server elements_spawn_shop_leer_timer_min matches 0 run scoreboard players set .server elements_spawn_shop_leer_timer-2_tick 12000
execute if score .server elements_spawn_shop_leer_timer_min matches 0 store result score .server elements_spawn_shop_leer_timer_min run random value 20..40


