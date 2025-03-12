#start-building #4

execute if score .server elements_abgabe_start_boden2 matches 3 in elements:hub run summon interaction 6.5 99.00 -9.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_start_boden2"]}
execute if score .server elements_abgabe_start_boden2 matches 3 in elements:hub run summon text_display 6.5 100.50 -9.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_start_boden2","abgabe_start_boden2_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_start_boden2_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_start_boden2_goal"}}]'}
execute if score .server elements_abgabe_start_boden2 matches 3 in elements:hub run summon block_display 6.5 101.00 -9.5 {billboard:"center",Tags:["abgabe_start_boden2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:cobbled_deepslate"}}
execute if score .server elements_abgabe_start_boden2 matches 3 in elements:hub run setblock 6 99 -10 reinforced_deepslate
execute if score .server elements_abgabe_start_boden2 matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_start_boden2_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_start_boden2 matches 3 in elements:hub run scoreboard players set .server elements_abgabe_start_boden2 1
