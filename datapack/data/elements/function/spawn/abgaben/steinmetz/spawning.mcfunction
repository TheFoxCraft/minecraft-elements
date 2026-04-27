#start-building #1

execute if score .server elements_abgabe_start_steinmetz matches 3 in elements:hub run summon interaction 0.50 99.00 -12.50 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_start_steinmetz"]}
execute if score .server elements_abgabe_start_steinmetz matches 3 in elements:hub run summon text_display 0.50 100.50 -12.50 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_start_steinmetz","abgabe_start_steinmetz_refresh"],text:'[{"color":"blue","score":{"name":".server","objective":"elements_abgabe_start_steinmetz_progress"}},{"color":"blue","text":"/"},{"color":"blue","score":{"name":".server","objective":"elements_abgabe_start_steinmetz_goal"}}]'}
execute if score .server elements_abgabe_start_steinmetz matches 3 in elements:hub run summon block_display 0.50 101.0 -12.50 {billboard:"center",Tags:["abgabe_start_steinmetz"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:cobblestone"}}
execute if score .server elements_abgabe_start_steinmetz matches 3 in elements:hub run setblock 0 99 -13 reinforced_deepslate
execute if score .server elements_abgabe_start_steinmetz matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_start_steinmetz_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_start_steinmetz matches 3 in elements:hub run scoreboard players set .server elements_abgabe_start_steinmetz 1
