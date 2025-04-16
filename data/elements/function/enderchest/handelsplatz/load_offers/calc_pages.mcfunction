execute if score .server elements_enderchest_handelsplatz_offer_count_page matches 19.. run scoreboard players add .server elements_enderchest_handelsplatz_page_count 1
execute if score .server elements_enderchest_handelsplatz_offer_count_page matches 19.. run scoreboard players remove .server elements_enderchest_handelsplatz_offer_count_page 18

execute if score .server elements_enderchest_handelsplatz_offer_count_page matches 19.. run function elements:enderchest/handelsplatz/load_offers/calc_pages