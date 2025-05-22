
execute if score .server elements_uniqueitem_bosse_schleimiger_popel matches 0 run data modify storage elements_bosse_uniques schleimiger_popel.UUID set from block ~ ~ ~ server_data.rewarded_players[0]
execute if score .server elements_uniqueitem_bosse_schleimiger_popel matches 0 run function elements:uniques/trigger/schleimiger_popel/pre with storage elements_bosse_uniques schleimiger_popel
kill @s