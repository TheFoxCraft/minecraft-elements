#main
execute as @a run attribute @s luck modifier remove wanderlachs_luck
execute as @a[nbt={Inventory:[{id:"minecraft:salmon",components:{"minecraft:custom_model_data":2}}]}] run attribute @s luck modifier add wanderlachs_luck 100 add_value