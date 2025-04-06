execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=2] 1







clear @s blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.3 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.5 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.22 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=14]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/ocean/magisches_wasser
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":14}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.4 loot elements:items/shops/ocean/magisches_wasser
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.4 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Magisches Wasser [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 14 }]




execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/ocean/water-breathing
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.10 loot elements:items/shops/ocean/water-breathing
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.10 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Water Breathing Potion [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 10 }]



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=16]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/ocean/luck-potion
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":16}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.11 loot elements:items/shops/ocean/luck-potion
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.11 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Luck Potion [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 16 }]



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:shulker_shell[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run give @s shulker_shell 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.12 with shulker_shell[custom_name='{"color":"yellow","text":"Shulker-Shell [500 Level]","italic": false}',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:emerald[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run give @s emerald 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.13 with emerald[custom_name='{"color":"yellow","text":"Smaragd [50 Level]","italic": false}',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:chorus_fruit[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/ocean/mining_frucht
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.14 loot elements:items/shops/ocean/mining_frucht
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.14 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Miningfrucht [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 2 }]



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:sweet_berries[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/ocean/foraging_frucht
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:sweet_berries",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.15 loot elements:items/shops/ocean/foraging_frucht
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.15 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Foragingfrucht [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 2 }]


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:glow_berries[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/ocean/farming_frucht
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:glow_berries",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.16 loot elements:items/shops/ocean/farming_frucht
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.16 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Farmingfrucht [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 2 }]



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:pumpkin_pie[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/ocean/fishing_frucht
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:pumpkin_pie",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.17 loot elements:items/shops/ocean/fishing_frucht
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.17 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Fishingfrucht [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 2 }]



# BOSS-FRÜCHTE

#header
execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:golden_apple[custom_model_data=1]

#stage 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] if score .server elements_stage matches 1 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] if score .server elements_stage matches 1 run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] if score .server elements_stage matches 1 at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] if score .server elements_stage matches 1 run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] if score .server elements_stage matches 1 run loot give @s loot elements:items/shops/ocean/bossfrucht/stage_1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] if score .server elements_stage matches 1 run xp add @s -50 levels
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 1 run loot replace entity @s enderchest.9 loot elements:items/shops/ocean/bossfrucht/stage_1
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 1 run item modify entity @s enderchest.9 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Bossfrucht Stage 1 [50 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 1 }]

#stage 2
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] if score .server elements_stage matches 2 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] if score .server elements_stage matches 2 run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] if score .server elements_stage matches 2 at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] if score .server elements_stage matches 2 run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] if score .server elements_stage matches 2 run loot give @s loot elements:items/shops/ocean/bossfrucht/stage_2
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] if score .server elements_stage matches 2 run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 2 run loot replace entity @s enderchest.9 loot elements:items/shops/ocean/bossfrucht/stage_2
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 2 run item modify entity @s enderchest.9 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Bossfrucht Stage 2 [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 1 }]

#stage 3
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..999}] if score .server elements_stage matches 3 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..999}] if score .server elements_stage matches 3 run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] if score .server elements_stage matches 3 at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] if score .server elements_stage matches 3 run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] if score .server elements_stage matches 3 run loot give @s loot elements:items/shops/ocean/bossfrucht/stage_3
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] if score .server elements_stage matches 3 run xp add @s -1000 levels
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 3 run loot replace entity @s enderchest.9 loot elements:items/shops/ocean/bossfrucht/stage_3
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 3 run item modify entity @s enderchest.9 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Bossfrucht Stage 3 [1.000 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 1 }]


#footer
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple",components:{"minecraft:custom_model_data":1}}}]

# BOSS-FRÜCHTE END


