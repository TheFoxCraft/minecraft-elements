execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=2] 1




clear @a blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.3 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.5 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.22 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1


execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magma_block[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..499}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run loot give @s loot elements:items/shops/nether/hot_lava
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=500..}] run xp add @s -500 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.4 loot elements:items/shops/nether/hot_lava
execute as @a[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.4 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Heiße Lava [500 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data",    "value": 2  }]


execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:nether_wart[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..199}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..}] run give @s nether_wart 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=200..}] run xp add @s -200 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:nether_wart",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.9 with nether_wart[custom_name='{"color":"yellow","text":"Netherwarze [200 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:quartz[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..4}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..4}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=5..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=5..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=5..}] run give @s quartz 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=5..}] run xp add @s -5 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:quartz",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.10 with quartz[custom_name='{"color":"yellow","text":"Quartz [5 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:blaze_rod[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run give @s blaze_rod 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.11 with blaze_rod[custom_name='{"color":"yellow","text":"Lohenrute [50 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ender_pearl[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run give @s ender_pearl 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.12 with ender_pearl[custom_name='{"color":"yellow","text":"Enderperle [50 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:wither_skeleton_skull[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..999}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..999}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] run give @s wither_skeleton_skull 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=1000..}] run xp add @s -1000 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.13 with wither_skeleton_skull[custom_name='{"color":"yellow","text":"Wither-Skelettschädel [1.000 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..9}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..9}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10..}] run loot give @s loot elements:items/shops/nether/small_heal_pot
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=10..}] run xp add @s -10 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.14 loot elements:items/shops/nether/small_heal_pot
execute as @a[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.14 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Kleiner Heiltrank [10 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data",    "value": 2  }]



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:potion[custom_model_data=4]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..49}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run loot give @s loot elements:items/shops/nether/big_heal_pot
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=50..}] run xp add @s -50 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":3}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run loot replace entity @s enderchest.15 loot elements:items/shops/nether/big_heal_pot
execute as @a[scores={elements_enderchest_interface_number=9}] run item modify entity @s enderchest.15 [{ "function": "minecraft:set_name", "entity": "this", "name": {"text": "Großer Heiltrank [50 Level]","color": "yellow","italic": false}},{"function": "minecraft:set_custom_model_data", "value": 4 }]



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:ancient_debris[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..249}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..249}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=250..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=250..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=250..}] run give @s ancient_debris 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=250..}] run xp add @s -250 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:ancient_debris",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.16 with ancient_debris[custom_name='{"color":"yellow","text":"Antiker Schrott [250 Level]","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_interface_number=9}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:netherite_upgrade_smithing_template[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..1999}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=..1999}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Du hast zu wenig Level","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..}] run tellraw @s [{"text": "Shop: ","color": "yellow"},{"text": "Gekauft!","color": "white"}]
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..}] run give @s netherite_upgrade_smithing_template 1
execute as @a[scores={elements_enderchest_interface_clicked=1,elements_mainlevel=2000..}] run xp add @s -2000 levels
execute as @a[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_upgrade_smithing_template",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_interface_number=9}] run item replace entity @s enderchest.17 with netherite_upgrade_smithing_template[custom_name='{"color":"yellow","text":"Upgrade Template [2.000 Level]","italic": false}',custom_model_data=2,hide_additional_tooltip={}] 1



