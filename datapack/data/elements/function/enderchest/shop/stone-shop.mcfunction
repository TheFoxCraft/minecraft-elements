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
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"stone/rettungs_plattform",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:stone_pressure_plate",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"stone/rettungs_plattform",price:500,price_multiplier:5,name:"Rettungs-Plattform",name_type:"text",is_loot:1,cumoda:2,slot:4}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:raw_iron_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"raw_iron_block",price:90,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_iron_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"raw_iron_block",price:90,price_multiplier:5,name:"block.minecraft.raw_iron_block",name_type:"translate",is_loot:0,cumoda:2,slot:10}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:raw_copper_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"raw_copper_block",price:90,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_copper_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"raw_copper_block",price:90,price_multiplier:5,name:"block.minecraft.raw_copper_block",name_type:"translate",is_loot:0,cumoda:2,slot:11}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:raw_gold_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"raw_gold_block",price:90,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:raw_gold_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"raw_gold_block",price:90,price_multiplier:5,name:"block.minecraft.raw_gold_block",name_type:"translate",is_loot:0,cumoda:2,slot:12}



# no unique
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:redstone_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=45..,elements_enderchest_shop_stone=1}] if score .server elements_uniqueitem_shop_jos_stoff matches 0 run function elements:uniques/trigger/jos_stoff/random
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"redstone_block",price:45,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"redstone_block",price:45,price_multiplier:5,name:"block.minecraft.redstone_block",name_type:"translate",is_loot:0,cumoda:2,slot:13}

# unique
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:redstone_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"redstone_block",price:36,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"redstone_block",price:36,price_multiplier:5,name:"block.minecraft.redstone_block",name_type:"translate",is_loot:0,cumoda:2,slot:13}


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:diamond[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"diamond",price:100,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"diamond",price:100,price_multiplier:5,name:"item.minecraft.diamond",name_type:"translate",is_loot:0,cumoda:2,slot:14}


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=6]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"stone/leveltrank",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":6}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"stone/leveltrank",price:500,price_multiplier:5,name:"Level-Trank",name_type:"text",is_loot:1,cumoda:6,slot:15}


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=8]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"stone",type:"stone/hastetrank",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":8}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"stone",type:"stone/hastetrank",price:500,price_multiplier:5,name:"Haste-Trank",name_type:"text",is_loot:1,cumoda:8,slot:16}


#Passe diesen Abschnitt so an, dass er diesem System entspricht
#execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magma_block[custom_model_data=2]
#execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"nether/hot_lava",price:500,price_multiplier:5,is_loot:1}
#execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
#kill @e[type=item,nbt={Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:custom_model_data":2}}}]
#execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"nether/hot_lava",price:500,price_multiplier:5,name:"Heiße Lava",name_type:"text",is_loot:1,cumoda:2,slot:4}
#
#
#"name" ist manchmal auch der translate, der multiplier sollte immer 5 sein.
#wenn es einen give statt einer savely_give_loot verwendet sollte is_loot auf 0 sein, sonst auf 1