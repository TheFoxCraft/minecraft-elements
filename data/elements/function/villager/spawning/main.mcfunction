execute as @e[type=armor_stand,tag=spawner_techniker] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["techniker"]}
execute as @e[type=armor_stand,tag=spawner_techniker] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["techniker"],text:'{"translate":"elements.villager.techniker.name","color":"blue"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_techniker] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["techniker","follow"],CustomName:'{"color":"blue","translate":"elements.villager.techniker.name"}',VillagerData:{level:99,profession:"minecraft:toolsmith",type:"minecraft:plains"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_techniker] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_schrotthaendler] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["leer_shop_all","schrotthaendler"]}
execute as @e[type=armor_stand,tag=spawner_schrotthaendler] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["leer_shop_all","schrotthaendler"],text:'{"text":"Schrotthändler","color":"blue"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_schrotthaendler] at @s run summon villager ~ ~ ~ {NoAI:1b,Invulnerable:1b,CanPickUpLoot:0b,Tags:["leer_shop_all","leer_shop_schrotthaendler","schrotthaendler","follow"],CustomName:'{"color":"gold","text":"Schrotthändler"}',VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:savanna"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_schrotthaendler] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_clementius] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["clementius"]}
execute as @e[type=armor_stand,tag=spawner_clementius] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["clementius"],text:'{"translate":"elements.villager.clementius.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_clementius] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["clementius","follow"],HandItems:[{id:"minecraft:anvil",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_clementius] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_titus] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["titus"]}
execute as @e[type=armor_stand,tag=spawner_titus] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["titus"],text:'{"translate":"elements.villager.titus.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_titus] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["titus","follow"],HandItems:[{id:"minecraft:smithing_table",count:1},{}],VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_titus] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_mystery] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["mystery"]}
execute as @e[type=armor_stand,tag=spawner_mystery] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["mystery"],text:'{"translate":"elements.villager.mystery.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_mystery] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["mystery","follow"],HandItems:[{id:"minecraft:totem_of_undying",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:swamp"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_mystery] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-2_mana"]}
execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-2_mana"],text:'{"translate":"elements.villager.stage_2.mana.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-2_mana","follow"],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:savanna"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-2_mana] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-2_farm-slots"]}
execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-2_farm-slots"],text:'{"translate":"elements.villager.stage_2.farmslots.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-2_farm-slots","follow"],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-2_farm-slots] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-3_mana] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-3_mana"]}
execute as @e[type=armor_stand,tag=spawner_stage-3_mana] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-3_mana"],text:'{"translate":"elements.villager.stage_3.mana.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-3_mana] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-3_mana","follow"],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:savanna"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-3_mana] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-3_farm-slots] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-3_farm-slots"]}
execute as @e[type=armor_stand,tag=spawner_stage-3_farm-slots] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-3_farm-slots"],text:'{"translate":"elements.villager.stage_3.farmslots.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-3_farm-slots] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-3_farm-slots","follow"],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-3_farm-slots] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-4_mana] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-4_mana"]}
execute as @e[type=armor_stand,tag=spawner_stage-4_mana] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-4_mana"],text:'{"translate":"elements.villager.stage_4.mana.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-4_mana] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-4_mana","follow"],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:savanna"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-4_mana] at @s run kill @s

execute as @e[type=armor_stand,tag=spawner_stage-4_farm-slots] at @s run summon interaction ~ ~ ~ {width:0.8f,height:2f,response:1b,Tags:["stage-4_farm-slots"]}
execute as @e[type=armor_stand,tag=spawner_stage-4_farm-slots] at @s run summon text_display ~ ~2 ~ {billboard:"center",Tags:["stage-4_farm-slots"],text:'{"translate":"elements.villager.stage_4.farmslots.name","color":"gold"}',alignment:"center"}
execute as @e[type=armor_stand,tag=spawner_stage-4_farm-slots] at @s run summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["stage-4_farm-slots","follow"],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:taiga"},Offers:{}}
execute as @e[type=armor_stand,tag=spawner_stage-4_farm-slots] at @s run kill @s


execute as @e[type=armor_stand,tag=spawner_fisher] at @s if score .server elements_stage matches 2.. run function elements:villager/spawning/fisher

execute as @e[type=armor_stand,tag=spawner_steinmetz] at @s if score .server elements_stage matches 1.. run function elements:villager/spawning/stage_1

execute as @e[type=armor_stand,tag=spawner_foerster] at @s if score .server elements_stage matches 2.. run function elements:villager/spawning/stage_2

execute as @e[type=armor_stand,tag=spawner_stage-3_main] at @s if score .server elements_stage matches 3.. run function elements:villager/spawning/stage_3

execute as @e[type=armor_stand,tag=spawner_stage-4_main] at @s if score .server elements_stage matches 4.. run function elements:villager/spawning/stage_4
