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
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1

#no unique
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] if score .server elements_uniqueitem_shop_hasenpfote matches 0 run function elements:uniques/trigger/hasenpfote/random
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.3 loot elements:items/shops/sky/manatrank
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run item modify entity @s enderchest.3 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "10x Manatrank [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data","value":12}]
#unique
execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..399,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..399,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/manatrank"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] if score .server elements_uniqueitem_shop_hasenpfote matches 0 run function elements:uniques/trigger/hasenpfote/random
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=400..,elements_enderchest_shop_sky=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -400 levels
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.3 loot elements:items/shops/sky/manatrank
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run item modify entity @s enderchest.3 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "10x Manatrank [400 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data","value":12}]


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] run function elements:sonstiges/savely_give_loot {id:"elements:items/shops/sky/sauger"}
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] run xp add @s -500 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.4 loot elements:items/shops/sky/sauger
execute as @s[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.4 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Sauger [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data","value":2}]


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:elytra[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..9999,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..9999,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10000..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10000..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10000..,elements_enderchest_shop_sky=1}] run give @s elytra 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10000..,elements_enderchest_shop_sky=1}] run xp add @s -10000 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.5 with elytra[custom_name='{"color":"yellow","text":"Elytra [10.000 Level]","italic": false}',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:efficiency":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.9 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.efficiency","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=3]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:sharpness":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":3}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.10 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.sharpness","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=3] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=4]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:protection":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.11 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.protection","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=4] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=5]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:mending":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":5}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.12 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.mending","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=5] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=6]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:unbreaking":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":6}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.13 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.unbreaking","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=6] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=7]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:silk_touch":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":7}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.14 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.silk_touch","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=7] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=8]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:feather_falling":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":8}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.15 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.feather_falling","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=8] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=9]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:swift_sneak":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":9}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.16 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.swift_sneak","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=9] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:depth_strider":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.17 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.depth_strider","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=10] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=11]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:aqua_affinity":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":11}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.19 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.aqua_affinity","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=11] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:lure":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.20 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.lure","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=12] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=13]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:sweeping_edge":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":13}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.21 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.sweeping_edge","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=13] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=14]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:power":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":14}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.22 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.power","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=14] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=15]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..1999,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..1999,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:infinity":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..,elements_enderchest_shop_sky=1}] run xp add @s -2000 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":15}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.23 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.infinity","color": "yellow","italic": false},{"color":"yellow","text":" [2.000 Level]","italic": false}]',custom_model_data=15] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=16]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:luck_of_the_sea":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":16}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.24 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.luck_of_the_sea","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=16] 1



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=17]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run give @s enchanted_book[stored_enchantments={levels:{"minecraft:loyalty":1}},max_stack_size=64] 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..,elements_enderchest_shop_sky=1}] run xp add @s -200 levels
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_shop_sky=0}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":17}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.25 with enchanted_book[custom_name='[{"translate": "enchantment.minecraft.loyalty","color": "yellow","italic": false},{"color":"yellow","text":" [200 Level]","italic": false}]',custom_model_data=17] 1