#functions



#other
execute as @a[scores={elements_get-name_status=1}] run function elements:sonstiges/get_name/query_name_availability_pre

#update signs

execute in elements:hub run function elements:spawn/updatesigns


# set values from server to all players
scoreboard players operation @a elements_stage = .server elements_stage
scoreboard players operation @a elements_uniqueitem_bosse_taubenkacke = .server elements_uniqueitem_bosse_taubenkacke
scoreboard players operation @a elements_uniqueitem_bosse_tomorrowland_karte = .server elements_uniqueitem_bosse_tomorrowland_karte
scoreboard players operation @a elements_uniqueitem_bosse_amboesse = .server elements_uniqueitem_bosse_amboesse


schedule function elements:function-timers/1m 1200