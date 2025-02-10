execute as @a[scores={elements_level_wood_4=1..,elements_mainlevel=0}] if score #server elements_stage matches 2.. run damage @s 5
execute as @a[scores={elements_level_wood_5=1..,elements_mainlevel=0}] if score #server elements_stage matches 2.. run damage @s 5
execute as @a[scores={elements_level_wood_6=1..,elements_mainlevel=0}] if score #server elements_stage matches 2.. run damage @s 5


execute as @a[scores={elements_level_wood_4=1..}] if score #server elements_stage matches 2.. run xp add @s -1 levels
execute as @a[scores={elements_level_wood_5=1..}] if score #server elements_stage matches 2.. run xp add @s -1 levels
execute as @a[scores={elements_level_wood_6=1..}] if score #server elements_stage matches 2.. run xp add @s -1 levels


execute as @a store result score @s elements_mainlevel run xp query @s levels



execute as @a[scores={elements_level_wood_4=1..}] run scoreboard players remove @s elements_level_wood_4 1
execute as @a[scores={elements_level_wood_5=1..}] run scoreboard players remove @s elements_level_wood_5 1
execute as @a[scores={elements_level_wood_6=1..}] run scoreboard players remove @s elements_level_wood_6 1




$execute as @a[scores={elements_level_stone_1=1..}] if score #server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_stone) points
execute as @a[scores={elements_level_stone_1=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_level_stone_1=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_1=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:4}}
execute as @a[scores={elements_level_stone_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:5}}
execute as @a[scores={elements_level_stone_1=1..}] run scoreboard players set @s elements_level_stone_1 0

$execute as @a[scores={elements_level_stone_2=1..}] if score #server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_stone) points
execute as @a[scores={elements_level_stone_2=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:1}}
execute as @a[scores={elements_level_stone_2=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:2}}
execute as @a[scores={elements_level_stone_2=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:3}}
execute as @a[scores={elements_level_stone_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:2}}
execute as @a[scores={elements_level_stone_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:3}}
execute as @a[scores={elements_level_stone_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:4}}
execute as @a[scores={elements_level_stone_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5}}}] at @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:basalt",count:5}}
execute as @a[scores={elements_level_stone_2=1..}] run scoreboard players set @s elements_level_stone_2 0

$execute as @a[scores={elements_level_stone_3=1..}] if score #server elements_stage matches 1.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_stone) points
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:2}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:3}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:2}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:3}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:4}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:5}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5,"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},limit=1,sort=nearest] run execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0

execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:2}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:3}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:4}}
execute as @a[scores={elements_level_stone_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":5}}}] at @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:5}}
execute as @a[scores={elements_level_stone_3=1..}] run scoreboard players set @s elements_level_stone_3 0


$execute as @a[scores={elements_level_wood_1=1..}] if score #server elements_stage matches 2.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_wood) levels
execute as @a[scores={elements_level_wood_1=1..},nbt={SelectedItem:{id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}}] at @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",count:1}}
execute as @a[scores={elements_level_wood_1=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",count:2}}
execute as @a[scores={elements_level_wood_1=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",count:3}}
execute as @a[scores={elements_level_wood_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",count:2}}
execute as @a[scores={elements_level_wood_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",count:3}}
execute as @a[scores={elements_level_wood_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}}] at @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",count:4}}
execute as @a[scores={elements_level_wood_1=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":5}}}] at @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:oak_log",count:5}}
execute as @a[scores={elements_level_wood_1=1..}] run scoreboard players set @s elements_level_wood_1 0

$execute as @a[scores={elements_level_wood_2=1..}] if score #server elements_stage matches 2.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_wood) levels
execute as @a[scores={elements_level_wood_2=1..},nbt={SelectedItem:{id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}}] at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:1}}
execute as @a[scores={elements_level_wood_2=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:2}}
execute as @a[scores={elements_level_wood_2=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:3}}
execute as @a[scores={elements_level_wood_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:2}}
execute as @a[scores={elements_level_wood_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:3}}
execute as @a[scores={elements_level_wood_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}}] at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:4}}
execute as @a[scores={elements_level_wood_2=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":5}}}] at @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:spruce_log",count:5}}
execute as @a[scores={elements_level_wood_2=1..}] run scoreboard players set @s elements_level_wood_2 0

$execute as @a[scores={elements_level_wood_3=1..}] if score #server elements_stage matches 2.. if score @s elements_homedimension = @s elements_dimension run xp add @s $(elements_level_wood) levels
execute as @a[scores={elements_level_wood_3=1..},nbt={SelectedItem:{id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}}] at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",count:1}}
execute as @a[scores={elements_level_wood_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",count:2}}
execute as @a[scores={elements_level_wood_3=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",count:3}}
execute as @a[scores={elements_level_wood_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}}] at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",count:2}}
execute as @a[scores={elements_level_wood_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}}] at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",count:3}}
execute as @a[scores={elements_level_wood_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}}] at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",count:4}}
execute as @a[scores={elements_level_wood_3=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":5}}}] at @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",count:1}},limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",count:5}}
execute as @a[scores={elements_level_wood_3=1..}] run scoreboard players set @s elements_level_wood_3 0
















