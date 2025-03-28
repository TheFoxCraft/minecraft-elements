#stage 2 wood / level / gang

execute if score .server elements_abgabe_stage_2_gang matches 3 in elements:hub run summon interaction 28.5 100.00 0.5 {width:1.01f,height:1.01f,response:1b,Tags:["abgabe_stage_wood_level"]}
execute if score .server elements_abgabe_stage_2_gang matches 3 in elements:hub run summon text_display 28.5 101.50 0.5 {billboard:"center",default_background:1b,alignment:"center",Tags:["abgabe_stage_wood_level","abgabe_stage_wood_level_refresh"],text:'[{"color":"green","score":{"name":".server","objective":"elements_abgabe_stage_2_gang_progress"}},{"color":"green","text":"/"},{"color":"green","score":{"name":".server","objective":"elements_abgabe_stage_2_gang_goal"}}]'}
execute if score .server elements_abgabe_stage_2_gang matches 3 in elements:hub run summon item_display 28.5 102.25 0.5 {billboard:"center",Tags:["abgabe_stage_wood_level"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"experience_bottle"}}
execute if score .server elements_abgabe_stage_2_gang matches 3 in elements:hub run setblock 28 100 0 reinforced_deepslate
execute if score .server elements_abgabe_stage_2_gang matches 3 in elements:hub run scoreboard players operation .server elements_abgabe_stage_2_gang_abgabe-mode = .server elements_abgabe_general_abgabe-mode
execute if score .server elements_abgabe_stage_2_gang matches 3 in elements:hub run scoreboard players set .server elements_abgabe_stage_2_gang 1
