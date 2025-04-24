$execute as @a[nbt={UUID:$(UUID)}] run scoreboard players add @s elements_miningxp_fishing_xp 10


$execute as @a[scores={elements_custom-items_shop_fishing-frucht_enable=1},nbt={UUID:$(UUID)}] run scoreboard players add @s elements_custom-items_shop_fishing-frucht_counter 1

$execute as @a[scores={elements_custom-items_shop_fishing-frucht_counter=3..},nbt={UUID:$(UUID)}] run scoreboard players add @s elements_miningxp_fishing_xp 10
$execute as @a[scores={elements_custom-items_shop_fishing-frucht_counter=3..},nbt={UUID:$(UUID)}] run scoreboard players remove @s elements_custom-items_shop_fishing-frucht_counter 3

$execute as @a[scores={elements_miningxp_fishing_level=..99},nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text":"🎣 Fishing: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_fishing_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_fishing_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
$execute as @a[scores={elements_miningxp_fishing_level=100},nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text":"🎣 Fishing: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_fishing_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
$scoreboard players set @a[nbt={UUID:$(UUID)}] elements_sonstiges_actionbar_pause 20

$execute as @a[nbt={UUID:$(UUID)}] store result score @s elements_miningxp_fishing_loot run random value 1..100
$execute as @a[nbt={UUID:$(UUID)}] if score @s elements_miningxp_fishing_level >= @s elements_miningxp_fishing_loot at @s run loot spawn ~ ~ ~ fish gameplay/fishing/treasure ~ ~ ~ mainhand

$execute as @a[nbt={UUID:$(UUID)}] if entity @s[nbt={Inventory:[{id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":10}}]}] run loot spawn ~ ~ ~ fish gameplay/fishing/treasure ~ ~ ~ mainhand


$execute if score .server elements_stage matches 1 as @a[nbt={UUID:$(UUID)}] run xp add @s 2 levels
$execute if score .server elements_stage matches 1 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] run xp add @s 1 levels
$execute if score .server elements_stage matches 1 as @a[nbt={UUID:$(UUID)}] if score .server elements_double-xp-event_active matches 1 run xp add @s 2 levels
$execute if score .server elements_stage matches 1 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] if score .server elements_double-xp-event_active matches 1 run xp add @s 1 levels

$execute if score .server elements_stage matches 2 as @a[nbt={UUID:$(UUID)}] run xp add @s 6 levels
$execute if score .server elements_stage matches 2 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] run xp add @s 4 levels
$execute if score .server elements_stage matches 2 as @a[nbt={UUID:$(UUID)}] if score .server elements_double-xp-event_active matches 1 run xp add @s 6 levels
$execute if score .server elements_stage matches 2 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] if score .server elements_double-xp-event_active matches 1 run xp add @s 4 levels

$execute if score .server elements_stage matches 3 as @a[nbt={UUID:$(UUID)}] run xp add @s 12 levels
$execute if score .server elements_stage matches 3 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] run xp add @s 8 levels
$execute if score .server elements_stage matches 3 as @a[nbt={UUID:$(UUID)}] if score .server elements_double-xp-event_active matches 1 run xp add @s 12 levels
$execute if score .server elements_stage matches 3 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] if score .server elements_double-xp-event_active matches 1 run xp add @s 8 levels

$execute if score .server elements_stage matches 4 as @a[nbt={UUID:$(UUID)}] run xp add @s 24 levels
$execute if score .server elements_stage matches 4 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] run xp add @s 16 levels
$execute if score .server elements_stage matches 4 as @a[nbt={UUID:$(UUID)}] if score .server elements_double-xp-event_active matches 1 run xp add @s 24 levels
$execute if score .server elements_stage matches 4 as @a[nbt={UUID:$(UUID)},predicate=elements:is_in_hub] if score .server elements_double-xp-event_active matches 1 run xp add @s 16 levels


$execute as @a[nbt={UUID:$(UUID)}] run scoreboard players add @s elements_stats_fish_caught 1
$execute as @a[nbt={UUID:$(UUID)}] run scoreboard players add .server elements_stats_fish_caught 1

$execute as @a[nbt={UUID:$(UUID)}] run function elements:sonstiges/element_shards/trigger_fishing

#unique
$execute if score .server elements_uniqueitem_wanderlachs matches 0 as @a[nbt={UUID:$(UUID)}] run function elements:uniques/trigger/wanderlachs/random