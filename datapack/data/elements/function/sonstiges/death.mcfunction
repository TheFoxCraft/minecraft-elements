scoreboard players operation @s elements_death_level = @s elements_mainlevel
execute unless entity @s[nbt={Inventory:[{id:"minecraft:recovery_compass",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players operation @s elements_death_level *= .server elements_config_death_level
execute if entity @s[nbt={Inventory:[{id:"minecraft:recovery_compass",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players operation @s elements_death_level *= .server elements_config_death_level_datenspeicher
scoreboard players operation @s elements_death_level /= #fixed_100 elements_fixed
scoreboard players operation @s elements_death_level_lost = @s elements_mainlevel
scoreboard players operation @s elements_death_level_lost -= @s elements_death_level
scoreboard players operation .server elements_death_level_loose = #fixed_100 elements_fixed
execute unless entity @s[nbt={Inventory:[{id:"minecraft:recovery_compass",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players operation .server elements_death_level_loose -= .server elements_config_death_level
execute if entity @s[nbt={Inventory:[{id:"minecraft:recovery_compass",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players operation .server elements_death_level_loose -= .server elements_config_death_level_datenspeicher

tellraw @s ["",{"text": "Du hast ","color": "red"},{"score":{"name":".server","objective":"elements_death_level_loose"},"color": "red"},{"text": "% deiner Level verloren!","color": "red"}]
execute as @a[scores={elements_death_level_lost=50..}] if score .server elements_stage matches 1 run tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" ist gestorben und hat ","color":"aqua"},{"score":{"name":"@s","objective":"elements_death_level_lost"},"bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["Hatte: ",{"score":{"name":"@s","objective":"elements_mainlevel"}}," Level","\n","Jetzt: ",{"score":{"name":"@s","objective":"elements_death_level"}}," Level"]}},{"text":" Level verloren!","color":"aqua"}]
execute as @a[scores={elements_death_level_lost=1000..}] if score .server elements_stage matches 2.. run tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" ist gestorben und hat ","color":"aqua"},{"score":{"name":"@s","objective":"elements_death_level_lost"},"bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["Hatte: ",{"score":{"name":"@s","objective":"elements_mainlevel"}}," Level","\n","Jetzt: ",{"score":{"name":"@s","objective":"elements_death_level"}}," Level"]}},{"text":" Level verloren!","color":"aqua"}]

execute store result storage elements_death_levelgive elements_death_levelgive int 1 run scoreboard players get @s elements_death_level


scoreboard players operation @s elements_stats_levellost += @s elements_death_level_lost
scoreboard players operation .server elements_stats_serverlevellost += @s elements_death_level_lost

function elements:sonstiges/death_levelgive with storage elements_death_levelgive

scoreboard players add .server elements_stats_serverdeath 1
scoreboard players set @s elements_death_level 0
scoreboard players set @s elements_death_level_lost 0
scoreboard players set @s elements_death 0
scoreboard players set @s elements_mana_item_schrumpfstab_stufe 1

#unique item trigger
execute if score .server elements_uniqueitem_other_datenspeicher matches 0 if score @s elements_mainlevel matches 100000.. as @s run function elements:uniques/trigger/datenspeicher


# cancel stats for ausgegeben 
execute as @a store result score @s elements_stats_level_ausgegeben_calc_get_old run xp query @s levels