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
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.22 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=14]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/magisches_wasser",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":14}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/magisches_wasser",price:500,price_multiplier:5,name:"Magisches Wasser",name_type:"text",is_loot:1,cumoda:14,slot:4}




execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/water-breathing",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/water-breathing",price:500,price_multiplier:5,name:"Water Breathing Potion",name_type:"text",is_loot:1,cumoda:10,slot:10}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=16]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/luck-potion",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":16}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/luck-potion",price:500,price_multiplier:5,name:"Luck Potion",name_type:"text",is_loot:1,cumoda:16,slot:11}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:shulker_shell[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"shulker_shell",price:500,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"shulker_shell",price:500,price_multiplier:5,name:"item.minecraft.shulker_shell",name_type:"translate",is_loot:0,cumoda:2,slot:12}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:emerald[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"emerald",price:50,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"emerald",price:50,price_multiplier:5,name:"item.minecraft.emerald",name_type:"translate",is_loot:0,cumoda:2,slot:13}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:chorus_fruit[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/mining_frucht",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/mining_frucht",price:500,price_multiplier:5,name:"Miningfrucht",name_type:"text",is_loot:1,cumoda:2,slot:14}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:carrot[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/foraging_frucht",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/foraging_frucht",price:500,price_multiplier:5,name:"Foragingfrucht",name_type:"text",is_loot:1,cumoda:2,slot:15}

#no unique
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:glow_berries[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_ocean=1}] if score .server elements_uniqueitem_shop_allium_ghg matches 0 run function elements:uniques/trigger/allium_ghg/random
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/farming_frucht",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:glow_berries",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/farming_frucht",price:500,price_multiplier:5,name:"Farmingfrucht",name_type:"text",is_loot:1,cumoda:2,slot:16}
# unique
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:glow_berries[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/farming_frucht",price:400,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] if score .server elements_uniqueitem_shop_allium_ghg matches 0 run function elements:uniques/trigger/allium_ghg/random
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:glow_berries",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:allium",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/farming_frucht",price:400,price_multiplier:5,name:"Farmingfrucht",name_type:"text",is_loot:1,cumoda:2,slot:16}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:pumpkin_pie[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/fishing_frucht",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:pumpkin_pie",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/fishing_frucht",price:500,price_multiplier:5,name:"Fishingfrucht",name_type:"text",is_loot:1,cumoda:2,slot:17}


# BOSS-FRÜCHTE

#header
execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:golden_apple[custom_model_data=1]


#stage 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_stage matches 1 run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/bossfrucht/stage_1",price:50,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 1 run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/bossfrucht/stage_1",price:50,price_multiplier:5,name:"Bossfrucht Stage 1",name_type:"text",is_loot:1,cumoda:1,slot:9}
#stage 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_stage matches 2 run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/bossfrucht/stage_2",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 2 run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/bossfrucht/stage_2",price:500,price_multiplier:5,name:"Bossfrucht Stage 2",name_type:"text",is_loot:1,cumoda:1,slot:9}
#stage 3
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_stage matches 3 run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/bossfrucht/stage_3",price:1000,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 3 run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/bossfrucht/stage_3",price:1000,price_multiplier:5,name:"Bossfrucht Stage 3",name_type:"text",is_loot:1,cumoda:1,slot:9}
#stage 4
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_stage matches 4 run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/bossfrucht/stage_4",price:1200,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 4 run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/bossfrucht/stage_4",price:1200,price_multiplier:5,name:"Bossfrucht Stage 4",name_type:"text",is_loot:1,cumoda:1,slot:9}
#stage 5
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score .server elements_stage matches 5 run function elements:enderchest/shop/buying/trigger {shop:"ocean",type:"ocean/bossfrucht/stage_5",price:1500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_number=9}] if score .server elements_stage matches 5 run function elements:enderchest/shop/build_item_preview/main {shop:"ocean",type:"ocean/bossfrucht/stage_5",price:1500,price_multiplier:5,name:"Bossfrucht Stage 5",name_type:"text",is_loot:1,cumoda:1,slot:9}

#footer
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple",components:{"minecraft:custom_model_data":1}}}]

# BOSS-FRÜCHTE END


