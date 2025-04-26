function elements:mana/regeneration
function elements:mana/main

function elements:custom-items/shop/ocean/bossfrucht/main_handling

#get login
execute as @s[scores={elements_get-login=1..}] run function elements:sonstiges/on_login
execute as @s[scores={elements_get-login=1..}] run scoreboard players set @s elements_get-login 0
