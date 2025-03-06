execute as @a[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=3}] store result score @s elements_enderchest_interface_click_upgradeschmiede_back run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] unless entity @s[nbt={EnderItems:[{Slot:12b}]}] unless entity @p[nbt={EnderItems:[{Slot:14b}]}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] if entity @s[nbt={EnderItems:[{Slot:12b}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] if entity @s[nbt={EnderItems:[{Slot:12b}]}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Achtung! Du hast noch ein Item im Input-Slot!","color": "red"}]
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Achtung! Du hast noch ein Item im Output-Slot!","color": "red"}]
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] unless entity @s[nbt={EnderItems:[{Slot:12b}]}] unless entity @p[nbt={EnderItems:[{Slot:14b}]}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] unless entity @s[nbt={EnderItems:[{Slot:12b}]}] unless entity @p[nbt={EnderItems:[{Slot:14b}]}] run function elements:enderchest/enderchest-clear
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_back=1}] run scoreboard players set @s elements_enderchest_interface_click_upgradeschmiede_back 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @a[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=3}] run item replace entity @s enderchest.22 with magenta_glazed_terracotta[custom_name='{"color":"red","text":"Zurück","italic": false}',custom_model_data=2] 1



execute as @a[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=3}] store result score @s elements_enderchest_interface_click_upgradeschmiede_upgrade run clear @s minecraft:anvil[custom_model_data=2]
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_upgrade=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Achtung! Du hast noch ein Item im Output-Slot!","color": "red"}]
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_upgrade=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_upgrade=1}] unless entity @s[nbt={EnderItems:[{Slot:14b}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 3
#open-finish

# |-----------------------------------------ADD HERE-----------------------------------------|


#element pickaxe
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/rare
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -10000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/epic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/legendary
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/epic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/legendary
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/mythic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels

#element axe
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/rare
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -10000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/epic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/legendary
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/epic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/legendary
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/mythic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels

#photon
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/photon/epic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -50000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/photon/legendary
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -250000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/photon/mythic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -750000 levels

#element fishing-rod
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/rare
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -10000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/epic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/legendary
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/mythic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels

#photon
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/gravity-stone/epic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -50000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/gravity-stone/legendary
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -250000 levels

execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/gravity-stone/mythic
execute as @a[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -750000 levels

# |-----------------------------------------\ADD HERE END-----------------------------------------|


#close-finish
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_upgrade=1,elements_enderchest_upgradeschmiede_upgrade=3}] run item replace entity @s enderchest.12 with air
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_upgrade=1,elements_enderchest_upgradeschmiede_upgrade=3}] at @s run playsound minecraft:block.anvil.use master @s
execute as @a[scores={elements_enderchest_interface_click_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_interface_click_upgradeschmiede_upgrade 0



scoreboard players set @a elements_enderchest_upgradeschmiede_upgrade 0


# |-----------------------------------------ADD HERE-----------------------------------------|

#element pickaxe
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#element axe
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#photon
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#element fishing-rod
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#gravity stone
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @a[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

# |-----------------------------------------\ADD HERE END-----------------------------------------|

execute as @a[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=1,elements_mainlevel=10000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2
execute as @a[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=2,elements_mainlevel=50000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2
execute as @a[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=3,elements_mainlevel=250000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2
execute as @a[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=4,elements_mainlevel=750000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2


execute as @a[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_upgrade=0}] run item replace entity @s enderchest.13 with damaged_anvil[custom_name='{"color":"red","strikethrough":true,"text":"Upgrade!","italic": false}',lore=['{"color":"red","text":"Ungültiges Item!","italic": false}'],custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_upgrade=1}] run item replace entity @s enderchest.13 with chipped_anvil[custom_name='{"color":"red","strikethrough":true,"text":"Upgrade!","italic": false}',lore=['{"color":"red","text":"Zu wenig Level!","italic": false}'],custom_model_data=1] 1
execute as @a[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_upgrade=2}] run item replace entity @s enderchest.13 with anvil[custom_name='{"color":"gold","text":"Upgrade!","italic": false}',custom_model_data=2] 1
clear @a minecraft:damaged_anvil[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:damaged_anvil",count:1,components:{"minecraft:custom_model_data":1}}}]
clear @a minecraft:chipped_anvil[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:chipped_anvil",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_model_data":2}}}]





clear @a minecraft:blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.3 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.5 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.9 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.10 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.11 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.15 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.16 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.17 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.26 with blue_stained_glass_pane[custom_name='{"text":" "}',custom_model_data=1,hide_tooltip={}] 1
clear @a minecraft:oak_hanging_sign[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @a[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.4 with oak_hanging_sign[custom_name='{"color":"blue","text":"Upgrade-Station Info:","italic": false}',lore=['{"text":"Element Equipment Upgrades:","italic": false}','{"text":" "}','[{"bold":true,"color":"blue","text":"Rare:            ","italic": false},{"bold":false,"color":"green","text":"10.000 Level","italic": false}]','[{"bold":true,"color":"dark_purple","text":"Epic:             ","italic": false},{"bold":false,"color":"green","text":"50.000 Level","italic": false}]','[{"bold":true,"color":"gold","text":"Legendary:    ","italic": false},{"bold":false,"color":"green","text":"250.000 Level","italic": false}]','[{"bold":true,"color":"light_purple","text":"Mythic:         ","italic": false},{"bold":false,"color":"green","text":"750.000 Level","italic": false}]'],custom_model_data=1] 1