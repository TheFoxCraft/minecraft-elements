#rettungsplattform
execute as @a[scores={elements_custom-items_shop_rettungs-plattform_cooldown=1..}] run scoreboard players remove @s elements_custom-items_shop_rettungs-plattform_cooldown 1
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=1..}] run title @s actionbar [{"text": "Cooldown: ","color": "red"},{"score": {"name": "@s","objective": "elements_custom-items_shop_rettungs-plattform_cooldown"},"color": "red"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0,elements_custom-items_shop_rettungs-plattform_cooldown_show=1}] run title @s actionbar [{"text": "Cooldown: ","color": "green"},{"score": {"name": "@s","objective": "elements_custom-items_shop_rettungs-plattform_cooldown"},"color": "green"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0,elements_custom-items_shop_rettungs-plattform_cooldown_show=1}] run scoreboard players set @s elements_custom-items_shop_rettungs-plattform_cooldown_show 0

#miningfrüchte
execute as @a[scores={elements_custom-items_shop_mining-frucht_cooldown=1..}] run scoreboard players remove @s elements_custom-items_shop_mining-frucht_cooldown 1
execute as @a[scores={elements_custom-items_shop_foraging-frucht_cooldown=1..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_cooldown 1
execute as @a[scores={elements_custom-items_shop_farming-frucht_cooldown=1..}] run scoreboard players remove @s elements_custom-items_shop_farming-frucht_cooldown 1
execute as @a[scores={elements_custom-items_shop_fishing-frucht_cooldown=1..}] run scoreboard players remove @s elements_custom-items_shop_fishing-frucht_cooldown 1
execute as @a[scores={elements_custom-items_shop_small-heal-potion_cooldown=1..}] run scoreboard players remove @s elements_custom-items_shop_small-heal-potion_cooldown 1
