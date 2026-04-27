#debug


#is mainblock right
$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ spruce_sapling run return fail
$execute positioned $(x) $(y) $(z) run function elements:sonstiges/bonemeal/detect_00 with storage elements_bonemeal
$execute positioned $(x) $(y) $(z) run function elements:sonstiges/bonemeal/detect_11 with storage elements_bonemeal
$execute positioned $(x) $(y) $(z) run function elements:sonstiges/bonemeal/detect_10 with storage elements_bonemeal
$execute positioned $(x) $(y) $(z) run function elements:sonstiges/bonemeal/detect_01 with storage elements_bonemeal
$execute positioned $(x) $(y) $(z) run function elements:sonstiges/bonemeal/hightlight


execute if score @s elements_bonemeal_success matches 1 run clear @s bone 1