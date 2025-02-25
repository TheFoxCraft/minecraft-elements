execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_back run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_back=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_back=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_back=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_shop_stone_back=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_back 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück","italic": false}',custom_model_data=2] 1




kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.3 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.5 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.9 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.17 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.22 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1






execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_rettungs-plattform run clear @s minecraft:stone_pressure_plate[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_rettungs-plattform=1,elements_mainlevel=..99}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_rettungs-plattform=1,elements_mainlevel=..99}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_rettungs-plattform=1,elements_mainlevel=100..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_rettungs-plattform=1,elements_mainlevel=100..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_rettungs-plattform=1,elements_mainlevel=100..}] run give @s stone_pressure_plate[max_stack_size=1,max_damage=50,can_break={predicates:[{blocks:"stone_pressure_plate"}],show_in_tooltip:false},custom_name='{"color":"blue","italic":false,"text":"Rettungs-Plattform"}',lore=['" "','[{"color":"light_purple","italic":false,"text":"Verbrauchen: "},{"color":"gray","italic":false,"text":"Platziert eine "},{"color":"green","italic":false,"text":"7x7 große Fläche"}]','{"color":"gray","italic":false,"text":"unter dem Spieler. Es wird der Block aus dem Inventar"}','{"color":"gray","italic":false,"text":"verwendet, welchen der Spieler in der Offhand hat"}','{"color":"dark_gray","italic":false,"text":"Es wird nur Luft ersetzt."}','" "','{"color":"blue","italic":false,"text":"50 Benutzungen"}','" "','{"bold":true,"color":"blue","italic":false,"text":"Rare"}'],damage=0,custom_model_data=1,attribute_modifiers={modifiers:[{id:"block_interaction_range",type:"block_interaction_range",amount:-1,operation:"add_multiplied_base",slot:"hand"}],show_in_tooltip:false},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:99999}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_rettungs-plattform=1,elements_mainlevel=100..}] run xp add @s -100 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_rettungs-plattform=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_rettungs-plattform 0
kill @e[type=item,nbt={Item:{id:"minecraft:stone_pressure_plate",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.4 with stone_pressure_plate[max_stack_size=1,max_damage=50,can_break={predicates:[{blocks:"stone_pressure_plate"}],show_in_tooltip:false},custom_name='{"color":"yellow","italic":false,"text":"Rettungs-Plattform [100 Level]"}',lore=['" "','[{"color":"light_purple","italic":false,"text":"Verbrauchen: "},{"color":"gray","italic":false,"text":"Platziert eine "},{"color":"green","italic":false,"text":"7x7 große Fläche"}]','{"color":"gray","italic":false,"text":"unter dem Spieler. Es wird der Block aus dem Inventar"}','{"color":"gray","italic":false,"text":"verwendet, welchen der Spieler in der Offhand hat"}','{"color":"dark_gray","italic":false,"text":"Es wird nur Luft ersetzt."}','" "','{"color":"blue","italic":false,"text":"50 Benutzungen"}','" "','{"bold":true,"color":"blue","italic":false,"text":"Rare"}'],damage=0,custom_model_data=2,attribute_modifiers={modifiers:[{id:"block_interaction_range",type:"block_interaction_range",amount:-1,operation:"add_multiplied_base",slot:"hand"}],show_in_tooltip:false},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:99999}] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_iron run clear @s minecraft:raw_iron_block[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_iron=1,elements_mainlevel=..89}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_iron=1,elements_mainlevel=..89}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_iron=1,elements_mainlevel=90..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_iron=1,elements_mainlevel=90..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_iron=1,elements_mainlevel=90..}] run give @s raw_iron_block 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_iron=1,elements_mainlevel=90..}] run xp add @s -90 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_iron=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_iron 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_iron_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.10 with raw_iron_block[custom_name='{"color":"yellow","text":"Eisen [90 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_copper run clear @s minecraft:raw_copper_block[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_copper=1,elements_mainlevel=..89}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_copper=1,elements_mainlevel=..89}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_copper=1,elements_mainlevel=90..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_copper=1,elements_mainlevel=90..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_copper=1,elements_mainlevel=90..}] run give @s raw_copper_block 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_copper=1,elements_mainlevel=90..}] run xp add @s -90 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_copper=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_copper 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_copper_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.11 with raw_copper_block[custom_name='{"color":"yellow","text":"Kupfer [90 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_gold run clear @s minecraft:raw_gold_block[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_gold=1,elements_mainlevel=..89}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_gold=1,elements_mainlevel=..89}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_gold=1,elements_mainlevel=90..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_gold=1,elements_mainlevel=90..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_gold=1,elements_mainlevel=90..}] run give @s raw_gold_block 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_gold=1,elements_mainlevel=90..}] run xp add @s -90 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_gold=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_gold 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_gold_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.12 with raw_gold_block[custom_name='{"color":"yellow","text":"Gold [90 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_redstone run clear @s minecraft:redstone_block[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_redstone=1,elements_mainlevel=..44}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_redstone=1,elements_mainlevel=..44}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_redstone=1,elements_mainlevel=45..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_redstone=1,elements_mainlevel=45..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_redstone=1,elements_mainlevel=45..}] run give @s redstone_block 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_redstone=1,elements_mainlevel=45..}] run xp add @s -45 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_redstone=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_redstone 0
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.13 with redstone_block[custom_name='{"color":"yellow","text":"Redstone [45 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_dia run clear @s minecraft:diamond[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_dia=1,elements_mainlevel=..99}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_dia=1,elements_mainlevel=..99}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_dia=1,elements_mainlevel=100..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_dia=1,elements_mainlevel=100..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_dia=1,elements_mainlevel=100..}] run give @s diamond 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_dia=1,elements_mainlevel=100..}] run xp add @s -100 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_dia=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_dia 0
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.14 with diamond[custom_name='{"color":"yellow","text":"Diamant [100 Level]","italic": false}',custom_model_data=2] 1


execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_leveltrank run clear @s minecraft:potion[custom_model_data=6]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_leveltrank=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_leveltrank=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_leveltrank=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_leveltrank=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_leveltrank=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/stone/leveltrank
execute as @a[scores={elements_enderchest_interface_click_shop_stone_leveltrank=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_leveltrank=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_leveltrank 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":6}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.15 loot elements:items/shops/stone/leveltrank
execute as @a[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.15 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Leveltrank [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 6 }]

execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_stone_hastetrank run clear @s minecraft:potion[custom_model_data=8]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_hastetrank=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_stone_hastetrank=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_hastetrank=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_stone_hastetrank=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_stone_hastetrank=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/stone/hastetrank
execute as @a[scores={elements_enderchest_interface_click_shop_stone_hastetrank=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @a[scores={elements_enderchest_interface_click_shop_stone_hastetrank=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_stone_hastetrank 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":8}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.16 loot elements:items/shops/stone/hastetrank
execute as @a[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.16 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Haste-Trank [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 8 }]
