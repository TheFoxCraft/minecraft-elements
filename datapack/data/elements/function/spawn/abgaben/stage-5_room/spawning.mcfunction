#stage2 3 / final room

execute if score .server elements_abgabe_stage_5 matches 3 in elements:hub run summon interaction -50.5 100.00 5.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_stage_5"]}
execute if score .server elements_abgabe_stage_5 matches 3 in elements:hub run summon text_display -50.5 101.50 5.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_stage_5","abgabe_stage_5_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_5_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_5_goal"}}]'}
execute if score .server elements_abgabe_stage_5 matches 3 in elements:hub run summon item_display -50.5 102.00 5.5 {billboard:"center",Tags:["abgabe_stage_5"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.125f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:sweet_berries"}}
execute if score .server elements_abgabe_stage_5 matches 3 in elements:hub run setblock -51 100 5 reinforced_deepslate
execute if score .server elements_abgabe_stage_5 matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_stage_5_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_stage_5 matches 3 in elements:hub run scoreboard players set .server elements_abgabe_stage_5 1
