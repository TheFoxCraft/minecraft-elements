execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_shop_interface 0
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
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.9 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.17 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.22 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1






execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:stone_pressure_plate[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_stone=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/stone/rettungs_plattform"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:stone_pressure_plate",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.4 loot elements:items/shops/stone/rettungs_plattform
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.4 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Rettungs-Plattform [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 2 }]



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:raw_iron_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..89,elements_enderchest_shop_stone=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..89,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run give @s raw_iron_block 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run xp add @s -90 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_iron_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.10 with raw_iron_block[custom_name='[{"translate": "block.minecraft.raw_iron_block","color": "yellow","italic": false},{"color":"yellow","text":" [90 Level]","italic": false}]',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:raw_copper_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..89,elements_enderchest_shop_stone=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..89,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run give @s raw_copper_block 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run xp add @s -90 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_copper_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.11 with raw_copper_block[custom_name='[{"translate": "block.minecraft.raw_copper_block","color": "yellow","italic": false},{"color":"yellow","text":" [90 Level]","italic": false}]',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:raw_gold_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..89,elements_enderchest_shop_stone=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..89,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run give @s raw_gold_block 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=90..,elements_enderchest_shop_stone=1}] run xp add @s -90 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_gold_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.12 with raw_gold_block[custom_name='[{"translate": "block.minecraft.raw_gold_block","color": "yellow","italic": false},{"color":"yellow","text":" [90 Level]","italic": false}]',custom_model_data=2] 1


# no unique
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:redstone_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..44,elements_enderchest_shop_stone=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..44,elements_enderchest_shop_stone=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=45..,elements_enderchest_shop_stone=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=45..,elements_enderchest_shop_stone=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=45..,elements_enderchest_shop_stone=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run give @s redstone_block 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=45..,elements_enderchest_shop_stone=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] if score .server elements_uniqueitem_shop_jos_stoff matches 0 run function elements:uniques/trigger/jos_stoff/random
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=45..,elements_enderchest_shop_stone=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -45 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run item replace entity @s enderchest.13 with redstone_block[custom_name='[{"translate": "block.minecraft.redstone_block","color": "yellow","italic": false},{"color":"yellow","text":" [45 Level]","italic": false}]',custom_model_data=2] 1
# unique
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:redstone_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..35,elements_enderchest_shop_stone=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..35,elements_enderchest_shop_stone=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=36..,elements_enderchest_shop_stone=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=36..,elements_enderchest_shop_stone=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=36..,elements_enderchest_shop_stone=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run give @s redstone_block 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=36..,elements_enderchest_shop_stone=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] if score .server elements_uniqueitem_shop_jos_stoff matches 0 run function elements:uniques/trigger/jos_stoff/random
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=36..,elements_enderchest_shop_stone=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -36 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run item replace entity @s enderchest.13 with redstone_block[custom_name='[{"translate": "block.minecraft.redstone_block","color": "yellow","italic": false},{"color":"yellow","text":" [36 Level]","italic": false}]',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..99,elements_enderchest_shop_stone=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..99,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=100..,elements_enderchest_shop_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=100..,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=100..,elements_enderchest_shop_stone=1}] run give @s diamond 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=100..,elements_enderchest_shop_stone=1}] run xp add @s -100 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.14 with diamond[custom_name='[{"translate": "item.minecraft.diamond","color": "yellow","italic": false},{"color":"yellow","text":" [100 Level]","italic": false}]',custom_model_data=2] 1


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=6]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_stone=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/stone/leveltrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":6}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.15 loot elements:items/shops/stone/leveltrank
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.15 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Leveltrank [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 6 }]

execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=8]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_stone=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/stone/hastetrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_stone=1}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_stone=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":8}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.16 loot elements:items/shops/stone/hastetrank
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.16 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Haste-Trank [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 8 }]
