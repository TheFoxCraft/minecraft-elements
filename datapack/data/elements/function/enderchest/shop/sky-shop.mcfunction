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

# no unique
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..,elements_enderchest_shop_sky=1}] if score .server elements_uniqueitem_shop_hasenpfote matches 0 run function elements:uniques/trigger/hasenpfote/random
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:"sky/manatrank",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:"sky/manatrank",price:500,price_multiplier:5,name:"10x Manatrank",name_type:"text",is_loot:1,cumoda:12,slot:3}

# unique
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] store success score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:"sky/manatrank",price:400,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] if entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:"sky/manatrank",price:400,price_multiplier:5,name:"10x Manatrank",name_type:"text",is_loot:1,cumoda:12,slot:3}

#Passe diesen Abschnitt so an, dass er diesem System entspricht:
#execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magma_block[custom_model_data=2]
#execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"nether",type:"nether/hot_lava",price:500,price_multiplier:5,is_loot:1}
#execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
#kill @e[type=item,nbt={Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:custom_model_data":2}}}]
#execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"nether",type:"nether/hot_lava",price:500,price_multiplier:5,name:"Heiße Lava",name_type:"text",is_loot:1,cumoda:2,slot:4}
#
#
#"name" ist manchmal auch der translate, der multiplier sollte immer 5 sein.
#wenn es einen give statt einer savely_give_loot verwendet sollte is_loot auf 0 sein, sonst auf 1
#Beachte hier auch das es einmal mit und einmal ohne das item "rabbit_foot" im inv geht, behalte es als zwei code-blöcke. die zeile mit dem unique item sollte so beibehalten werden

execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:"sky/sauger",price:500,price_multiplier:5,is_loot:1}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:"sky/sauger",price:500,price_multiplier:5,name:"Sauger",name_type:"text",is_loot:1,cumoda:2,slot:4}


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:elytra[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:"elytra",price:10000,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:"elytra",price:10000,price_multiplier:5,name:"Elytra",name_type:"text",is_loot:0,cumoda:2,slot:5}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:efficiency":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.efficiency",name_type:"translate",is_loot:0,cumoda:2,slot:9}


execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=3]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:sharpness":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":3}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.sharpness",name_type:"translate",is_loot:0,cumoda:3,slot:10}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=4]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:protection":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":4}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.protection",name_type:"translate",is_loot:0,cumoda:4,slot:11}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=5]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:mending":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":5}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.mending",name_type:"translate",is_loot:0,cumoda:5,slot:12}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=6]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:unbreaking":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":6}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.unbreaking",name_type:"translate",is_loot:0,cumoda:6,slot:13}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=7]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:silk_touch":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":7}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.silk_touch",name_type:"translate",is_loot:0,cumoda:7,slot:14}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=8]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:feather_falling":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":8}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.feather_falling",name_type:"translate",is_loot:0,cumoda:8,slot:15}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=9]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:swift_sneak":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":9}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.swift_sneak",name_type:"translate",is_loot:0,cumoda:9,slot:16}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=10]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:depth_strider":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":10}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.depth_strider",name_type:"translate",is_loot:0,cumoda:10,slot:17}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=11]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:aqua_affinity":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":11}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.aqua_affinity",name_type:"translate",is_loot:0,cumoda:11,slot:19}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=12]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:lure":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":12}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.lure",name_type:"translate",is_loot:0,cumoda:12,slot:20}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=13]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:sweeping_edge":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":13}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.sweeping_edge",name_type:"translate",is_loot:0,cumoda:13,slot:21}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=14]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:power":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":14}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.power",name_type:"translate",is_loot:0,cumoda:14,slot:22}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=15]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:infinity":1}},max_stack_size=64]',price:2000,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":15}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:2000,price_multiplier:5,name:"enchantment.minecraft.infinity",name_type:"translate",is_loot:0,cumoda:15,slot:23}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=16]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:luck_of_the_sea":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":16}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.luck_of_the_sea",name_type:"translate",is_loot:0,cumoda:16,slot:24}



execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:enchanted_book[custom_model_data=17]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/shop/buying/trigger {shop:"sky",type:'enchanted_book[stored_enchantments={levels:{"minecraft:loyalty":1}},max_stack_size=64]',price:200,price_multiplier:5,is_loot:0}
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_model_data":17}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/build_item_preview/main {shop:"sky",type:'enchanted_book',price:200,price_multiplier:5,name:"enchantment.minecraft.loyalty",name_type:"translate",is_loot:0,cumoda:17,slot:25}



