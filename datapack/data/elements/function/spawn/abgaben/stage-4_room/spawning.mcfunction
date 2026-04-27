#stage2 3 / final room

execute if score .server elements_abgabe_stage_4 matches 3 in elements:hub run summon interaction -50.5 100.00 -4.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_stage_4"]}
execute if score .server elements_abgabe_stage_4 matches 3 in elements:hub run summon text_display -50.5 101.50 -4.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_stage_4","abgabe_stage_4_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_4_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_stage_4_goal"}}]'}
execute if score .server elements_abgabe_stage_4 matches 3 in elements:hub run summon block_display -50.5 102.00 -4.5 {billboard:"center",Tags:["abgabe_stage_4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:nether_wart_block"}}
execute if score .server elements_abgabe_stage_4 matches 3 in elements:hub run setblock -51 100 -5 reinforced_deepslate
execute if score .server elements_abgabe_stage_4 matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_stage_4_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_stage_4 matches 3 in elements:hub run scoreboard players set .server elements_abgabe_stage_4 1
