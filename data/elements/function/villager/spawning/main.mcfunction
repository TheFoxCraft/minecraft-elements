execute as @e[type=armor_stand,tag=spawner_techniker] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["techniker"]}
execute as @e[type=armor_stand,tag=spawner_techniker] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["techniker"],text:'{"text":"Techniker","color":"blue"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_techniker] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["techniker","follow"],CustomName:'{"color":"blue","text":"Techniker"}',VillagerData:{level:99,profession:"minecraft:toolsmith",type:"minecraft:plains"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_techniker] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_clementius] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["clementius"]}
execute as @e[type=armor_stand,tag=spawner_clementius] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["clementius"],text:'{"text":"Clementius","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_clementius] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["clementius","follow"],HandItems:[{id:"minecraft:anvil",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_clementius] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_titus] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["titus"]}
execute as @e[type=armor_stand,tag=spawner_titus] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["titus"],text:'{"text":"Titus","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_titus] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["titus","follow"],HandItems:[{id:"minecraft:smithing_table",count:1},{}],VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_titus] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_mystery] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["mystery"]}
execute as @e[type=armor_stand,tag=spawner_mystery] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["mystery"],text:'{"text":"Mystery","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_mystery] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["mystery","follow"],HandItems:[{id:"minecraft:totem_of_undying",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:swamp"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_mystery] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-2_mana"]}
execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-2_mana"],text:'{"text":"Albus","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-2_mana","follow"],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:savanna"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-2_farm-slots"]}
execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-2_farm-slots"],text:'{"text":"Farmer Lehrling","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-2_farm-slots","follow"],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run kill @s


execute as @e[type=armor_stand,tag=spawner_steinmetz] at @s if score .server elements_stage matches 1.. run function elements:villager/spawning/stage_1


execute as @e[type=armor_stand,tag=spawner_foerster,limit=1] at @s if score .server elements_stage matches 2.. run function elements:villager/spawning/stage_2

