data modify storage elements_handelsmarkt_offers Load_Offers set from storage minecraft:elements_handelsmarkt_offers Offers

execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
scoreboard players operation .server elements_enderchest_handelsplatz_offer_count_page = .server elements_enderchest_handelsplatz_offer_count
scoreboard players set .server elements_enderchest_handelsplatz_page_count 0
execute if score .server elements_enderchest_handelsplatz_offer_count_page matches 19.. run function elements:enderchest/handelsplatz/load_offers/calc_pages

execute if score @s elements_enderchest_handelsplatz_page > .server elements_enderchest_handelsplatz_page_count run scoreboard players operation @s elements_enderchest_handelsplatz_page = .server elements_enderchest_handelsplatz_page_count

execute if score @s elements_enderchest_handelsplatz_page matches 1.. run scoreboard players operation @s elements_enderchest_handelsplatz_page_calc = @s elements_enderchest_handelsplatz_page
execute if score @s elements_enderchest_handelsplatz_page matches 1.. run function elements:enderchest/handelsplatz/load_offers/load_to_page


function elements:enderchest/handelsplatz/load_offers/main {Slot:9}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:10}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:11}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:12}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:13}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:14}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:15}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:16}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:17}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:18}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:19}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:20}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:21}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:22}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:23}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:24}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:25}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail
function elements:enderchest/handelsplatz/load_offers/main {Slot:26}
execute store result score .server elements_enderchest_handelsplatz_offer_count run data get storage elements_handelsmarkt_offers Offers
execute if score .server elements_enderchest_handelsplatz_offer_count matches 0 run return fail