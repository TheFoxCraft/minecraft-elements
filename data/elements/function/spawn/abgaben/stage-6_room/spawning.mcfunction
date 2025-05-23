#stage2 3 / final room

execute if score .server elements_abgabe_stage_6 matches 3 in elements:hub run summon interaction -78.5 100.00 0.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_stage_6"]}
execute if score .server elements_abgabe_stage_6 matches 3 in elements:hub run summon text_display -78.5 101.50 0.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_stage_6","abgabe_stage_6_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_6_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_6_goal"}}]'}
execute if score .server elements_abgabe_stage_6 matches 3 in elements:hub run summon item_display -78.5 102.00 0.5 {billboard:"center",Tags:["abgabe_stage_6"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.125f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:melon"}}
execute if score .server elements_abgabe_stage_6 matches 3 in elements:hub run setblock -79 100 0 reinforced_deepslate
execute if score .server elements_abgabe_stage_6 matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_stage_6_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_stage_6 matches 3 in elements:hub run scoreboard players set .server elements_abgabe_stage_6 1
