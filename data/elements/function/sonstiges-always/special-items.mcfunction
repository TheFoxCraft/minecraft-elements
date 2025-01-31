
#gravity-stone
execute as @a[nbt={SelectedItem:{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}}] at @s run tp @e[type=item,distance=..5,sort=furthest,limit=1] ~ ~ ~
execute as @a[nbt={Inventory:[{id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1},Slot:-106b}]}] at @s run tp @e[type=item,distance=..5,sort=furthest,limit=1] ~ ~ ~

