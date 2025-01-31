execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_back run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_back=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_back=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_back=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_shop_sky_back=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_back 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück","italic": false}',custom_model_data=2] 1

execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.13 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Sky"}',custom_model_data=2] 1



kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1




execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_elytra run clear @s minecraft:elytra[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_elytra=1,elements_mainlevel=..9999}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_elytra=1,elements_mainlevel=..9999}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_elytra=1,elements_mainlevel=10000..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_elytra=1,elements_mainlevel=10000..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_elytra=1,elements_mainlevel=10000..}] run give @s elytra 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_elytra=1,elements_mainlevel=10000..}] run xp add @s -10000 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_elytra=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_elytra 0
kill @e[type=item,nbt={Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.5 with elytra[custom_name='{"color":"yellow","text":"Elytra [10.000 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_efficiency run clear @s minecraft:enchanted_book[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_efficiency=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_efficiency=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_efficiency=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_efficiency=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_efficiency=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:efficiency":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_efficiency=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_efficiency=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_efficiency 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.9 with enchanted_book[custom_name='{"color":"yellow","text":"Effizienz [200 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_sharpness run clear @s minecraft:enchanted_book[custom_model_data=3]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sharpness=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sharpness=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sharpness=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sharpness=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sharpness=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:sharpness":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sharpness=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sharpness=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_sharpness 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":3}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.10 with enchanted_book[custom_name='{"color":"yellow","text":"Schärfe [200 Level]","italic": false}',custom_model_data=3] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_protection run clear @s minecraft:enchanted_book[custom_model_data=4]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_protection=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_protection=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_protection=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_protection=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_protection=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:protection":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_protection=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_protection=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_protection 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.11 with enchanted_book[custom_name='{"color":"yellow","text":"Schutz [200 Level]","italic": false}',custom_model_data=4] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_mending run clear @s minecraft:enchanted_book[custom_model_data=5]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_mending=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_mending=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_mending=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_mending=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_mending=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:mending":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_mending=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_mending=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_mending 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":5}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.12 with enchanted_book[custom_name='{"color":"yellow","text":"Reparatur [200 Level]","italic": false}',custom_model_data=5] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_unbreaking run clear @s minecraft:enchanted_book[custom_model_data=6]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_unbreaking=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_unbreaking=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_unbreaking=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_unbreaking=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_unbreaking=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:unbreaking":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_unbreaking=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_unbreaking=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_unbreaking 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":6}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.13 with enchanted_book[custom_name='{"color":"yellow","text":"Haltbarkeit [200 Level]","italic": false}',custom_model_data=6] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_silktouch run clear @s minecraft:enchanted_book[custom_model_data=7]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_silktouch=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_silktouch=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_silktouch=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_silktouch=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_silktouch=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:silk_touch":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_silktouch=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_silktouch=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_silktouch 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":7}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.14 with enchanted_book[custom_name='{"color":"yellow","text":"Behutsamkeit [200 Level]","italic": false}',custom_model_data=7] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_featherfalling run clear @s minecraft:enchanted_book[custom_model_data=8]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_featherfalling=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_featherfalling=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_featherfalling=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_featherfalling=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_featherfalling=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:feather_falling":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_featherfalling=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_featherfalling=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_featherfalling 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":8}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.15 with enchanted_book[custom_name='{"color":"yellow","text":"Federfall [200 Level]","italic": false}',custom_model_data=8] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_swift-sneak run clear @s minecraft:enchanted_book[custom_model_data=9]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_swift-sneak=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_swift-sneak=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_swift-sneak=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_swift-sneak=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_swift-sneak=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:swift_sneak":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_swift-sneak=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_swift-sneak=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_swift-sneak 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":9}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.16 with enchanted_book[custom_name='{"color":"yellow","text":"Swift Sneak [200 Level]","italic": false}',custom_model_data=9] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_depth-strider run clear @s minecraft:enchanted_book[custom_model_data=10]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_depth-strider=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_depth-strider=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_depth-strider=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_depth-strider=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_depth-strider=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:depth_strider":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_depth-strider=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_depth-strider=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_depth-strider 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.17 with enchanted_book[custom_name='{"color":"yellow","text":"Wasserläufer [200 Level]","italic": false}',custom_model_data=10] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_aqua-affinity run clear @s minecraft:enchanted_book[custom_model_data=11]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_aqua-affinity=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_aqua-affinity=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_aqua-affinity=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_aqua-affinity=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_aqua-affinity=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:aqua_affinity":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_aqua-affinity=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_aqua-affinity=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_aqua-affinity 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":11}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.19 with enchanted_book[custom_name='{"color":"yellow","text":"Wasseraffinität [200 Level]","italic": false}',custom_model_data=11] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_lure run clear @s minecraft:enchanted_book[custom_model_data=12]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_lure=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_lure=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_lure=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_lure=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_lure=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:lure":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_lure=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_lure=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_lure 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.20 with enchanted_book[custom_name='{"color":"yellow","text":"Köder [200 Level]","italic": false}',custom_model_data=12] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_sweeping run clear @s minecraft:enchanted_book[custom_model_data=13]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sweeping=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sweeping=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sweeping=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sweeping=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sweeping=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:sweeping_edge":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sweeping=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_sweeping=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_sweeping 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":13}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.21 with enchanted_book[custom_name='{"color":"yellow","text":"Schwungkraft [200 Level]","italic": false}',custom_model_data=13] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_power run clear @s minecraft:enchanted_book[custom_model_data=14]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_power=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_power=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_power=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_power=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_power=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:power":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_power=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_power=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_power 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":14}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.22 with enchanted_book[custom_name='{"color":"yellow","text":"Stärke [200 Level]","italic": false}',custom_model_data=14] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_infinity run clear @s minecraft:enchanted_book[custom_model_data=15]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_infinity=1,elements_mainlevel=..1999}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_infinity=1,elements_mainlevel=..1999}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_infinity=1,elements_mainlevel=2000..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_infinity=1,elements_mainlevel=2000..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_infinity=1,elements_mainlevel=2000..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:infinity":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_infinity=1,elements_mainlevel=2000..}] run xp add @s -2000 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_infinity=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_infinity 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":15}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.23 with enchanted_book[custom_name='{"color":"yellow","text":"Unendlichkeit [2.000 Level]","italic": false}',custom_model_data=15] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_luck-of-the-sea run clear @s minecraft:enchanted_book[custom_model_data=16]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_luck-of-the-sea=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_luck-of-the-sea=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_luck-of-the-sea=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_luck-of-the-sea=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_luck-of-the-sea=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:luck_of_the_sea":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_luck-of-the-sea=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_luck-of-the-sea=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_luck-of-the-sea 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":16}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.24 with enchanted_book[custom_name='{"color":"yellow","text":"Glück des Meeres [200 Level]","italic": false}',custom_model_data=16] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_click_shop_sky_loyalty run clear @s minecraft:enchanted_book[custom_model_data=17]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_loyalty=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_shop_sky_loyalty=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_loyalty=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_loyalty=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_click_shop_sky_loyalty=1,elements_mainlevel=200..}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:loyalty":1}}] 1
execute as @a[scores={elements_enderchest_interface_click_shop_sky_loyalty=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_click_shop_sky_loyalty=1}] run scoreboard players set @s elements_enderchest_interface_click_shop_sky_loyalty 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":17}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.25 with enchanted_book[custom_name='{"color":"yellow","text":"Treue [200 Level]","italic": false}',custom_model_data=17] 1