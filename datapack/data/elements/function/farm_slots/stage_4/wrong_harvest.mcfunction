tag @p remove has_element_bow
execute if entity @p[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":1}}}] run tag @p add has_element_bow
execute if entity @p[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":2}}}] run tag @p add has_element_bow
execute if entity @p[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":3}}}] run tag @p add has_element_bow
execute if entity @p[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":4}}}] run tag @p add has_element_bow
execute if entity @p[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_model_data":5}}}] run tag @p add has_element_bow


execute if entity @p[tag=!has_element_bow] run playsound minecraft:block.note_block.didgeridoo master @a[distance=..7] ~ ~ ~ 100 0
execute if entity @p[tag=!has_element_bow] run scoreboard players remove @p[scores={elements_farm-slots_stage-4_harvest=1..}] elements_farm-slots_stage-4_harvest 1
execute if entity @p[tag=!has_element_bow] run kill @n[type=item,nbt={Age:0s,Item:{id:"minecraft:sweet_berries"}}]

execute if entity @p[tag=has_element_bow] run scoreboard players remove @p[scores={elements_farm-slots_stage-4_harvest=1..}] elements_farm-slots_stage-4_harvest 1
execute if entity @p[tag=has_element_bow] run kill @n[type=item,nbt={Age:0s,Item:{id:"minecraft:sweet_berries"}}]
execute if entity @p[tag=has_element_bow] run setblock ~ ~ ~ sweet_berry_bush[age=2]
