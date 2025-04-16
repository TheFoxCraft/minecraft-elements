execute unless data entity @s EnderItems[{Slot:10b}] at @s run return run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0

execute if score @s elements_tokens_count < @s elements_enderchest_handelsplatz_new_offer_price_fine at @s run return run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0

scoreboard players add .server elements_enderchest_handelsplatz_offer_id 1

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1
scoreboard players operation @s elements_tokens_count -= @s elements_enderchest_handelsplatz_new_offer_price_fine
data modify storage elements_handelsmarkt_offers New_Offer.Player_Name set value "Unbekannt"
$data modify storage elements_handelsmarkt_offers New_Offer.Player_Name set from storage elements_playerdata_$(ID) name
data modify storage elements_handelsmarkt_offers New_Offer.Item set from entity @s EnderItems[{Slot:10b}]
execute store result storage elements_handelsmarkt_offers New_Offer.Price int 1 run scoreboard players get @s elements_enderchest_handelsplatz_new_offer_price
data remove storage elements_handelsmarkt_offers New_Offer.Item.Slot
execute store result storage elements_handelsmarkt_offers New_Offer.ID int 1 run scoreboard players get .server elements_enderchest_handelsplatz_offer_id
data modify storage elements_handelsmarkt_offers Offers append from storage elements_handelsmarkt_offers New_Offer

scoreboard players set @s elements_enderchest_handelsplatz_interface 0
function elements:enderchest/enderchest-clear
scoreboard players set @a elements_enderchest_handelsplatz_reload_offers 1
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Angebot erfolgreich erstellt!"}]