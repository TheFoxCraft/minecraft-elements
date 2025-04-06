execute as @s[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=2] 1


clear @s blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.3 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.4 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.5 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.9 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.11 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.13 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.15 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.17 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.22 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1

#ocean
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_ocean=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:water_bucket[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_shop_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:water_bucket",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_ocean=1,elements_enderchest_shop_interface=0,elements_rank_admin=1}] if score .server elements_enderchest_shop_ocean matches 1 run item replace entity @s enderchest.10 with water_bucket[custom_name='{"color":"blue","italic":false,"text":"Ocean-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde zusätzlich"}','{"color":"gray","italic":false,"text":"für Admins aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_ocean=1,elements_enderchest_shop_interface=0}] if score .server elements_enderchest_shop_ocean matches 2 run item replace entity @s enderchest.10 with water_bucket[custom_name='{"color":"blue","italic":false,"text":"Ocean-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde von einem"}','{"color":"gray","italic":false,"text":"Admin für alle Spieler aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_ocean=1,elements_enderchest_shop_interface=0,elements_homedimension=1}] run item replace entity @s enderchest.10 with water_bucket[custom_name='{"color":"gold","italic":false,"text":"Ocean-Shop"}',lore=['{"color":"gray","italic":false,"text":"Das ist der Orginal-Shop"}','{"color":"gray","italic":false,"text":"für deine Dimension"}'],custom_model_data=2,enchantment_glint_override=true]

execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_ocean=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_ocean=0,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.10 with gray_stained_glass_pane[custom_name='{"color":"dark_gray","italic":false,"text":"Ocean-Shop"}',lore=['{"color":"gray","italic":false,"text":"Du hast auf diesen Shop keinen Zugriff"}'],custom_model_data=1]

#stone
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_stone=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:stone[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_shop_interface 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_stone=1,elements_enderchest_shop_interface=0,elements_rank_admin=1}] if score .server elements_enderchest_shop_stone matches 1 run item replace entity @s enderchest.12 with stone[custom_name='{"color":"blue","italic":false,"text":"Stone-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde zusätzlich"}','{"color":"gray","italic":false,"text":"für Admins aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_stone=1,elements_enderchest_shop_interface=0}] if score .server elements_enderchest_shop_stone matches 2 run item replace entity @s enderchest.12 with stone[custom_name='{"color":"blue","italic":false,"text":"Stone-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde von einem"}','{"color":"gray","italic":false,"text":"Admin für alle Spieler aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_stone=1,elements_enderchest_shop_interface=0,elements_homedimension=2}] run item replace entity @s enderchest.12 with stone[custom_name='{"color":"gold","italic":false,"text":"Stone-Shop"}',lore=['{"color":"gray","italic":false,"text":"Das ist der Orginal-Shop"}','{"color":"gray","italic":false,"text":"für deine Dimension"}'],custom_model_data=2,enchantment_glint_override=true]

execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_stone=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_stone=0,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.12 with gray_stained_glass_pane[custom_name='{"color":"dark_gray","italic":false,"text":"Stone-Shop"}',lore=['{"color":"gray","italic":false,"text":"Du hast auf diesen Shop keinen Zugriff"}'],custom_model_data=1]

#sky
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_sky=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:grass_block[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_shop_interface 3
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:grass_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_sky=1,elements_enderchest_shop_interface=0,elements_rank_admin=1}] if score .server elements_enderchest_shop_sky matches 1 run item replace entity @s enderchest.14 with grass_block[custom_name='{"color":"blue","italic":false,"text":"Sky-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde zusätzlich"}','{"color":"gray","italic":false,"text":"für Admins aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_sky=1,elements_enderchest_shop_interface=0}] if score .server elements_enderchest_shop_sky matches 2 run item replace entity @s enderchest.14 with grass_block[custom_name='{"color":"blue","italic":false,"text":"Sky-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde von einem"}','{"color":"gray","italic":false,"text":"Admin für alle Spieler aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_sky=1,elements_enderchest_shop_interface=0,elements_homedimension=3}] run item replace entity @s enderchest.14 with grass_block[custom_name='{"color":"gold","italic":false,"text":"Sky-Shop"}',lore=['{"color":"gray","italic":false,"text":"Das ist der Orginal-Shop"}','{"color":"gray","italic":false,"text":"für deine Dimension"}'],custom_model_data=2,enchantment_glint_override=true]

execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_sky=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_sky=0,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.14 with gray_stained_glass_pane[custom_name='{"color":"dark_gray","italic":false,"text":"Sky-Shop"}',lore=['{"color":"gray","italic":false,"text":"Du hast auf diesen Shop keinen Zugriff"}'],custom_model_data=1]

#nether
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_nether=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:netherrack[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_shop_interface 4
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:netherrack",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_nether=1,elements_enderchest_shop_interface=0,elements_rank_admin=1}] if score .server elements_enderchest_shop_nether matches 1 run item replace entity @s enderchest.16 with netherrack[custom_name='{"color":"blue","italic":false,"text":"Nether-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde zusätzlich"}','{"color":"gray","italic":false,"text":"für Admins aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_nether=1,elements_enderchest_shop_interface=0}] if score .server elements_enderchest_shop_nether matches 2 run item replace entity @s enderchest.16 with netherrack[custom_name='{"color":"blue","italic":false,"text":"Nether-Shop"}',lore=['{"color":"gray","italic":false,"text":"Dieser Shop wurde von einem"}','{"color":"gray","italic":false,"text":"Admin für alle Spieler aktiviert"}'],custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_nether=1,elements_enderchest_shop_interface=0,elements_homedimension=4}] run item replace entity @s enderchest.16 with netherrack[custom_name='{"color":"gold","italic":false,"text":"Nether-Shop"}',lore=['{"color":"gray","italic":false,"text":"Das ist der Orginal-Shop"}','{"color":"gray","italic":false,"text":"für deine Dimension"}'],custom_model_data=2,enchantment_glint_override=true]

execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_nether=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:gray_stained_glass_pane[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_nether=0,elements_enderchest_shop_interface=0}] run item replace entity @s enderchest.16 with gray_stained_glass_pane[custom_name='{"color":"dark_gray","italic":false,"text":"Nether-Shop"}',lore=['{"color":"gray","italic":false,"text":"Du hast auf diesen Shop keinen Zugriff"}'],custom_model_data=1]



execute as @s[scores={elements_enderchest_shop_interface=1}] run function elements:enderchest/shop/ocean-shop
execute as @s[scores={elements_enderchest_shop_interface=2}] run function elements:enderchest/shop/stone-shop
execute as @s[scores={elements_enderchest_shop_interface=3}] run function elements:enderchest/shop/sky-shop
execute as @s[scores={elements_enderchest_shop_interface=4}] run function elements:enderchest/shop/nether-shop