execute as @a[scores={elements_level_wood_spruce_placed=1..,elements_mainlevel=0}] if score .server elements_stage matches 2.. run damage @s 5
execute as @a[scores={elements_level_wood_spruce_placed=1..}] if score .server elements_stage matches 2.. run xp add @s -1 levels



execute as @a store result score @s elements_mainlevel run xp query @s levels




execute as @a[scores={elements_level_wood_spruce_placed=1..}] run scoreboard players remove @s elements_level_wood_spruce_placed 1



# STAGE 1

$execute as @a[scores={elements_level_stone_cobblestone=1..}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_stone) points
$execute as @a[scores={elements_level_stone_cobblestone=1..}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s $(elements_level_stone) points
execute as @a[scores={elements_level_stone_cobblestone=1..,elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-1 1
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:4}}
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:5}}
execute as @a[scores={elements_level_stone_cobblestone=1..},nbt={Inventory:[{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":2}}]}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}

execute as @a[scores={elements_level_stone_cobblestone=1..}] run scoreboard players set @s elements_level_stone_cobblestone 0

$execute as @a[scores={elements_level_stone_basalt=1..}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_stone) points
$execute as @a[scores={elements_level_stone_basalt=1..}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s $(elements_level_stone) points
execute as @a[scores={elements_level_stone_basalt=1..,elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-1 1
execute as @a[scores={elements_level_stone_basalt=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_level_stone_basalt=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:2}}
execute as @a[scores={elements_level_stone_basalt=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:3}}
execute as @a[scores={elements_level_stone_basalt=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:2}}
execute as @a[scores={elements_level_stone_basalt=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:3}}
execute as @a[scores={elements_level_stone_basalt=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:4}}
execute as @a[scores={elements_level_stone_basalt=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:5}}
execute as @a[scores={elements_level_stone_basalt=1..},nbt={Inventory:[{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":2}}]}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_level_stone_basalt=1..}] run scoreboard players set @s elements_level_stone_basalt 0

$execute as @a[scores={elements_level_stone_stone=1..}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_stone) points
$execute as @a[scores={elements_level_stone_stone=1..}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s $(elements_level_stone) points
execute as @a[scores={elements_level_stone_stone=1..,elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-1 1
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:2}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:3}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:2}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:3}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:4}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:5}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}},Inventory:[{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":2}}]}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0

execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:4}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:5}}
execute as @a[scores={elements_level_stone_stone=1..},nbt={Inventory:[{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":2}}]}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_level_stone_stone=1..}] run scoreboard players set @s elements_level_stone_stone 0

$execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-1=10..}] run xp add @s $(elements_level_stone) points
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-1=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-1 10


# STAGE 2

$execute as @a[scores={elements_level_wood_spruce=1..}] if score .server elements_stage matches 2.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_wood) levels
$execute as @a[scores={elements_level_wood_spruce=1..}] if score .server elements_stage matches 2.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s $(elements_level_wood) levels
execute as @a[scores={elements_level_wood_spruce=1..,elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 2.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-2 1
execute as @a[scores={elements_level_wood_spruce=1..},nbt={SelectedItem:{id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @a[scores={elements_level_wood_spruce=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:2}}
execute as @a[scores={elements_level_wood_spruce=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:3}}
execute as @a[scores={elements_level_wood_spruce=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:2}}
execute as @a[scores={elements_level_wood_spruce=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:3}}
execute as @a[scores={elements_level_wood_spruce=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:4}}
execute as @a[scores={elements_level_wood_spruce=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:5}}
execute as @a[scores={elements_level_wood_spruce=1..}] run scoreboard players set @s elements_level_wood_spruce 0


$execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run xp add @s $(elements_level_wood) levels
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-2 10


# STAGE 3

execute as @a[scores={elements_level_crimson_vines_plant=1..}] run scoreboard players add @s elements_level_crimson_vines 1
execute as @a[scores={elements_level_crimson_vines_plant=1..}] run scoreboard players remove @s elements_level_crimson_vines_plant 1

$execute as @a[scores={elements_level_crimson_vines=1..}] if score .server elements_stage matches 3.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_crimson_vines) levels
$execute as @a[scores={elements_level_crimson_vines=1..}] if score .server elements_stage matches 3.. if score @s elements_homedimension = @s elements_dimension if score .server elements_double-xp-event_active matches 1 run xp add @s $(elements_level_crimson_vines) levels
execute as @a[scores={elements_level_crimson_vines=1..,elements_custom-items_shop_leveltrank_enable=1}] if score .server elements_stage matches 2.. if score @s elements_homedimension = @s elements_dimension run scoreboard players add @s elements_custom-items_shop_leveltrank_counter_stage-2 1
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",components:{"minecraft:custom_model_data":1}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines

execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines

execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines

execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":2}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines

execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines

execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines

execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines
execute as @a[scores={elements_level_crimson_vines=1..},nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":5}}}] at @s at @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",count:1}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot elements:items/other/crimson_vines

execute as @a[scores={elements_level_crimson_vines=1..}] run scoreboard players remove @s elements_level_crimson_vines 1

$execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run xp add @s $(elements_level_crimson_vines) levels
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-2 10











