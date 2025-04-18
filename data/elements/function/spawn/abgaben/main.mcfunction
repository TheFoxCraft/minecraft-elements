#start
scoreboard players add .server elements_abgabe_refresh_timer 1


#steinmetz #1
execute if score .server elements_abgabe_start_steinmetz matches 3 run function elements:spawn/abgaben/steinmetz/spawning
execute if score .server elements_abgabe_start_steinmetz matches 1 run function elements:spawn/abgaben/steinmetz/running
#mitte #2
execute if score .server elements_abgabe_start_mitte matches 3 run function elements:spawn/abgaben/mitte/spawning
execute if score .server elements_abgabe_start_mitte matches 1 run function elements:spawn/abgaben/mitte/running
#boden_1 #3
execute if score .server elements_abgabe_start_boden1 matches 3 run function elements:spawn/abgaben/boden_1/spawning
execute if score .server elements_abgabe_start_boden1 matches 1 run function elements:spawn/abgaben/boden_1/running
#boden_2 #4
execute if score .server elements_abgabe_start_boden2 matches 3 run function elements:spawn/abgaben/boden_2/spawning
execute if score .server elements_abgabe_start_boden2 matches 1 run function elements:spawn/abgaben/boden_2/running
#säulen #5
execute if score .server elements_abgabe_start_saeulen matches 3 run function elements:spawn/abgaben/saeulen/spawning
execute if score .server elements_abgabe_start_saeulen matches 1 run function elements:spawn/abgaben/saeulen/running
#titus #6
execute if score .server elements_abgabe_shop_titus matches 3 run function elements:spawn/abgaben/titus/spawning
execute if score .server elements_abgabe_shop_titus matches 1 run function elements:spawn/abgaben/titus/running
#clementius #7
execute if score .server elements_abgabe_shop_clementius matches 3 run function elements:spawn/abgaben/clementius/spawning
execute if score .server elements_abgabe_shop_clementius matches 1 run function elements:spawn/abgaben/clementius/running
#mystery #8
execute if score .server elements_abgabe_shop_mystery matches 3 run function elements:spawn/abgaben/mystery/spawning
execute if score .server elements_abgabe_shop_mystery matches 1 run function elements:spawn/abgaben/mystery/running
#leer-shop #9
execute if score .server elements_abgabe_shop_leer matches 3 run function elements:spawn/abgaben/leer-shop/spawning
execute if score .server elements_abgabe_shop_leer matches 1 run function elements:spawn/abgaben/leer-shop/running
#stage 2 wood/level/gang
execute if score .server elements_abgabe_stage_2_gang matches 3 run function elements:spawn/abgaben/stage-2_gang/spawning
execute if score .server elements_abgabe_stage_2_gang matches 1 run function elements:spawn/abgaben/stage-2_gang/running
#stage 2 final room
execute if score .server elements_abgabe_stage_2 matches 3 run function elements:spawn/abgaben/stage-2_room/spawning
execute if score .server elements_abgabe_stage_2 matches 1 run function elements:spawn/abgaben/stage-2_room/running
#levelbaum
execute if score .server elements_abgabe_other_levelbaum matches 3 run function elements:spawn/abgaben/levelbaum/spawning
execute if score .server elements_abgabe_other_levelbaum matches 1 run function elements:spawn/abgaben/levelbaum/running
#community-hub
execute if score .server elements_abgabe_other_community-hub-main matches 3 run function elements:spawn/abgaben/community-hub/spawning
execute if score .server elements_abgabe_other_community-hub-main matches 1 run function elements:spawn/abgaben/community-hub/running
#community-hub angelteich
execute if score .server elements_abgabe_other_angel-teich matches 3 run function elements:spawn/abgaben/angel_teich/spawning
execute if score .server elements_abgabe_other_angel-teich matches 1 run function elements:spawn/abgaben/angel_teich/running
#community-hub recyler
execute if score .server elements_abgabe_other_recycler matches 3 run function elements:spawn/abgaben/recycler/spawning
execute if score .server elements_abgabe_other_recycler matches 1 run function elements:spawn/abgaben/recycler/running
#stage 3 final room
execute if score .server elements_abgabe_stage_3 matches 3 run function elements:spawn/abgaben/stage-3_room/spawning
execute if score .server elements_abgabe_stage_3 matches 1 run function elements:spawn/abgaben/stage-3_room/running
#stage 4 gang
execute if score .server elements_abgabe_stage_4_gang matches 3 run function elements:spawn/abgaben/stage-4_gang/spawning
execute if score .server elements_abgabe_stage_4_gang matches 1 run function elements:spawn/abgaben/stage-4_gang/running
#stage 4 final room
execute if score .server elements_abgabe_stage_4 matches 3 run function elements:spawn/abgaben/stage-4_room/spawning
execute if score .server elements_abgabe_stage_4 matches 1 run function elements:spawn/abgaben/stage-4_room/running



#end
execute if score .server elements_abgabe_refresh_timer matches 40.. run scoreboard players set .server elements_abgabe_refresh_timer 0



# dynamic rates

# managed in function timer 10s


#save

#Titus: -19 100 7
#clementius: 11 100 7
#mystery: -20 100 -12
#Leer: 10 100 -12
#Fläche: -3 100 13



#Community-Hub:  -17 96 -65
#Community-Hub-Gang: -4 97 -33