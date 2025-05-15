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


# new system

execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magma_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"nether/hot_lava",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"nether/hot_lava",price:500,price_multiplier:5,name:"Heiße Lava",name_type:"text",is_loot:1,cumoda:2,slot:4}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:glowstone_dust[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"glowstone_dust",price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"glowstone_dust",price:200,price_multiplier:5,name:"item.minecraft.glowstone_dust",name_type:"translate",is_loot:0,cumoda:2,slot:9}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:quartz[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"quartz",price:5,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:quartz",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"quartz",price:5,price_multiplier:5,name:"item.minecraft.quartz",name_type:"translate",is_loot:0,cumoda:2,slot:10}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blaze_rod[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"blaze_rod",price:50,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"blaze_rod",price:50,price_multiplier:5,name:"item.minecraft.blaze_rod",name_type:"translate",is_loot:0,cumoda:2,slot:11}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"ender_pearl",price:50,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"ender_pearl",price:50,price_multiplier:5,name:"item.minecraft.ender_pearl",name_type:"translate",is_loot:0,cumoda:2,slot:12}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:wither_skeleton_skull[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"wither_skeleton_skull",price:1000,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"wither_skeleton_skull",price:1000,price_multiplier:5,name:"block.minecraft.wither_skeleton_skull",name_type:"translate",is_loot:0,cumoda:2,slot:13}



execute as @s[scores={elements_enderchest_interface_number=9}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"nether/small_heal_pot",price:100,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"nether/small_heal_pot",price:100,price_multiplier:5,name:"Kleiner Heiltrank",name_type:"text",is_loot:1,cumoda:2,slot:14}


# no unique
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=4]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_nether=1}] if score .server elements_uniqueitem_shop_mosh_pit matches 0 run function elements:uniques/trigger/mosh_pit/random
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"nether/big_heal_pot",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"nether/big_heal_pot",price:500,price_multiplier:5,name:"Großer Heiltrank",name_type:"text",is_loot:1,cumoda:4,slot:15}

# unique
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=4]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"nether/big_heal_pot",price:400,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:spawner",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"nether/big_heal_pot",price:400,price_multiplier:5,name:"Großer Heiltrank",name_type:"text",is_loot:1,cumoda:4,slot:15}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ancient_debris[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"ancient_debris",price:250,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:ancient_debris",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"ancient_debris",price:250,price_multiplier:5,name:"block.minecraft.ancient_debris",name_type:"translate",is_loot:0,cumoda:2,slot:16}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:netherite_upgrade_smithing_template[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"netherite_upgrade_smithing_template",price:2000,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_upgrade_smithing_template",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"netherite_upgrade_smithing_template",price:2000,price_multiplier:5,name:"item.minecraft.netherite_upgrade_smithing_template",name_type:"translate",is_loot:0,cumoda:2,slot:17}



