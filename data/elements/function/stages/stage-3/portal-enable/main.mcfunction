execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}}] at @s if block ~ ~ ~ #elements:farmslots/stage_3_slot run data modify entity @s NoGravity set value true
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}}] at @s if block ~ ~ ~ #elements:farmslots/stage_3_slot run data modify entity @s Motion set value [0,0,0]

execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}}] at @s if block ~ ~ ~ #elements:farmslots/stage_3_slot run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0 10
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}}] at @s if block ~ ~ ~ #elements:farmslots/stage_3_slot run scoreboard players add @s elements_stage_3_portal_enable_fungus_timer 1

execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}},scores={elements_stage_3_portal_enable_fungus_timer=200..}] at @s run tellraw @a[distance=..10] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"translate": "elements.chat.stage_3.portal_enable.fungus.transform"}]
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}},scores={elements_stage_3_portal_enable_fungus_timer=200..}] at @s run loot spawn ~ ~ ~ loot elements:items/other/stage_3/crimson_fungus
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}},scores={elements_stage_3_portal_enable_fungus_timer=200..}] at @s run particle smoke ~ ~ ~ 1 1 1 0 10
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_model_data":1}}},scores={elements_stage_3_portal_enable_fungus_timer=200..}] at @s run kill @s



execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true}] at @s run particle flame ~ ~0.1 ~ 0.1 0.1 0.1 0 1
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true}] at @s run scoreboard players add @s elements_stage_3_portal_enable_fungus_timer 1


execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true},predicate=!elements:is_in_hub,scores={elements_stage_3_portal_enable_fungus_timer=200}] at @s run tellraw @a[distance=..10] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"translate": "elements.chat.stage_3.portal_enable.crimson_fungus.wrong_place"}]
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true},predicate=elements:is_in_hub,scores={elements_stage_3_portal_enable_fungus_timer=200}] at @s unless block ~ ~-1 ~ crimson_nylium run tellraw @a[distance=..10] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"translate": "elements.chat.stage_3.portal_enable.crimson_fungus.wrong_place"}]

execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true},predicate=elements:is_in_hub,scores={elements_stage_3_portal_enable_fungus_timer=200}] at @s if entity @e[type=hoglin,tag=elemnets_stage_3_portal_enable_hoglin] if block ~ ~-1 ~ crimson_nylium run tellraw @a[distance=..10] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"translate": "elements.chat.stage_3.portal_enable.crimson_fungus.already_existing"}]


execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true},predicate=elements:is_in_hub,scores={elements_stage_3_portal_enable_fungus_timer=200}] at @s unless entity @e[type=hoglin,tag=elemnets_stage_3_portal_enable_hoglin] if block ~ ~-1 ~ crimson_nylium run tellraw @a[distance=..10] ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"translate": "elements.chat.stage_3.portal_enable.crimson_fungus.spawn"}]
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true},predicate=elements:is_in_hub,scores={elements_stage_3_portal_enable_fungus_timer=200}] at @s unless entity @e[type=hoglin,tag=elemnets_stage_3_portal_enable_hoglin] run particle smoke ~ ~ ~ 2 2 2 0 100 force
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true},predicate=elements:is_in_hub,scores={elements_stage_3_portal_enable_fungus_timer=200}] at @s unless entity @e[type=hoglin,tag=elemnets_stage_3_portal_enable_hoglin] run summon axolotl ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,Tags:["elemnets_stage_3_portal_enable_hoglin"],Passengers:[{id:"minecraft:hoglin",PersistenceRequired:1b,NoAI:1b,IsImmuneToZombification:1b,CannotBeHunted:1b,Tags:["elemnets_stage_3_portal_enable_hoglin"],DeathLootTable:empty}],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:scale",base:0.0625}]}
execute as @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",components:{"minecraft:custom_model_data":1}},OnGround:true},predicate=elements:is_in_hub,scores={elements_stage_3_portal_enable_fungus_timer=200}] at @s if entity @e[type=hoglin,tag=elemnets_stage_3_portal_enable_hoglin,distance=0] run kill @s


execute as @e[type=axolotl,tag=elemnets_stage_3_portal_enable_hoglin] unless entity @e[type=hoglin,tag=elemnets_stage_3_portal_enable_hoglin] at @s run function elements:stages/stage-3/portal-enable/final



execute unless entity @e[type=hoglin,tag=elemnets_stage_3_portal_enable_hoglin] run kill @e[type=axolotl,tag=elemnets_stage_3_portal_enable_hoglin]

