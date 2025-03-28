#stage2 wood / final room

execute if score .server elements_abgabe_stage_2 matches 3 in elements:hub run summon interaction 51.5 100.00 5.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_stage_wood"]}
execute if score .server elements_abgabe_stage_2 matches 3 in elements:hub run summon text_display 51.5 101.50 5.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_stage_wood","abgabe_stage_wood_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_2_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_2_goal"}}]'}
execute if score .server elements_abgabe_stage_2 matches 3 in elements:hub run summon block_display 51.5 102.00 5.5 {billboard:"center",Tags:["abgabe_stage_wood"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:cobbled_deepslate"}}
execute if score .server elements_abgabe_stage_2 matches 3 in elements:hub run setblock 51 100 5 reinforced_deepslate
execute if score .server elements_abgabe_stage_2 matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_stage_2_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_stage_2 matches 3 in elements:hub run scoreboard players set .server elements_abgabe_stage_2 1
