execute if score @s elements_enderchest_interface_number matches 4 run return fail
execute unless items entity @s enderchest.* *[custom_data~{elements:enderchest_item}] run return fail
execute unless items entity @s enderchest.0 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:0b}] run function elements:enderchest/fix_item {slot:0}
execute unless items entity @s enderchest.1 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:1b}] run function elements:enderchest/fix_item {slot:1}
execute unless items entity @s enderchest.2 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:2b}] run function elements:enderchest/fix_item {slot:2}
execute unless items entity @s enderchest.3 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:3b}] run function elements:enderchest/fix_item {slot:3}
execute unless items entity @s enderchest.4 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:4b}] run function elements:enderchest/fix_item {slot:4}
execute unless items entity @s enderchest.5 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:5b}] run function elements:enderchest/fix_item {slot:5}
execute unless items entity @s enderchest.6 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:6b}] run function elements:enderchest/fix_item {slot:6}
execute unless items entity @s enderchest.7 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:7b}] run function elements:enderchest/fix_item {slot:7}
execute unless items entity @s enderchest.8 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:8b}] run function elements:enderchest/fix_item {slot:8}
execute unless items entity @s enderchest.9 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:9b}] run function elements:enderchest/fix_item {slot:9}
execute unless items entity @s enderchest.10 *[custom_data~{elements:enderchest_item}] unless score @s elements_enderchest_handelsplatz_interface matches 1 if data entity @s EnderItems[{Slot:10b}] run function elements:enderchest/fix_item {slot:10}
execute unless items entity @s enderchest.11 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:11b}] run function elements:enderchest/fix_item {slot:11}
execute unless items entity @s enderchest.12 *[custom_data~{elements:enderchest_item}] unless score @s elements_enderchest_interface_number matches 3 if data entity @s EnderItems[{Slot:12b}] run function elements:enderchest/fix_item {slot:12}
execute unless items entity @s enderchest.13 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:13b}] run function elements:enderchest/fix_item {slot:13}
execute unless items entity @s enderchest.14 *[custom_data~{elements:enderchest_item}] unless score @s elements_enderchest_interface_number matches 3 if data entity @s EnderItems[{Slot:14b}] run function elements:enderchest/fix_item {slot:14}
execute unless items entity @s enderchest.15 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:15b}] run function elements:enderchest/fix_item {slot:15}
execute unless items entity @s enderchest.16 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:16b}] run function elements:enderchest/fix_item {slot:16}
execute unless items entity @s enderchest.17 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:17b}] run function elements:enderchest/fix_item {slot:17}
execute unless items entity @s enderchest.18 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:18b}] run function elements:enderchest/fix_item {slot:18}
execute unless items entity @s enderchest.19 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:19b}] run function elements:enderchest/fix_item {slot:19}
execute unless items entity @s enderchest.20 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:20b}] run function elements:enderchest/fix_item {slot:20}
execute unless items entity @s enderchest.21 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:21b}] run function elements:enderchest/fix_item {slot:21}
execute unless items entity @s enderchest.22 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:22b}] run function elements:enderchest/fix_item {slot:22}
execute unless items entity @s enderchest.23 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:23b}] run function elements:enderchest/fix_item {slot:23}
execute unless items entity @s enderchest.24 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:24b}] run function elements:enderchest/fix_item {slot:24}
execute unless items entity @s enderchest.25 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:25b}] run function elements:enderchest/fix_item {slot:25}
execute unless items entity @s enderchest.26 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:26b}] run function elements:enderchest/fix_item {slot:26}


# temp to fix duping
execute unless items entity @s enderchest.1 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:1b}] run item replace entity @s enderchest.1 with air
execute unless items entity @s enderchest.2 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:2b}] run item replace entity @s enderchest.2 with air
execute unless items entity @s enderchest.3 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:3b}] run item replace entity @s enderchest.3 with air
execute unless items entity @s enderchest.4 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:4b}] run item replace entity @s enderchest.4 with air
execute unless items entity @s enderchest.5 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:5b}] run item replace entity @s enderchest.5 with air
execute unless items entity @s enderchest.6 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:6b}] run item replace entity @s enderchest.6 with air
execute unless items entity @s enderchest.7 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:7b}] run item replace entity @s enderchest.7 with air
execute unless items entity @s enderchest.8 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:8b}] run item replace entity @s enderchest.8 with air
execute unless items entity @s enderchest.9 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:9b}] run item replace entity @s enderchest.9 with air
execute unless items entity @s enderchest.10 *[custom_data~{elements:enderchest_item}] unless score @s elements_enderchest_handelsplatz_interface matches 1 if data entity @s EnderItems[{Slot:10b}] run item replace entity @s enderchest.10 with air
execute unless items entity @s enderchest.11 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:11b}] run item replace entity @s enderchest.11 with air
execute unless items entity @s enderchest.12 *[custom_data~{elements:enderchest_item}] unless score @s elements_enderchest_interface_number matches 3 if data entity @s EnderItems[{Slot:12b}] run item replace entity @s enderchest.12 with air
execute unless items entity @s enderchest.13 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:13b}] run item replace entity @s enderchest.13 with air
execute unless items entity @s enderchest.14 *[custom_data~{elements:enderchest_item}] unless score @s elements_enderchest_interface_number matches 3 if data entity @s EnderItems[{Slot:14b}] run item replace entity @s enderchest.14 with air
execute unless items entity @s enderchest.15 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:15b}] run item replace entity @s enderchest.15 with air
execute unless items entity @s enderchest.16 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:16b}] run item replace entity @s enderchest.16 with air
execute unless items entity @s enderchest.17 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:17b}] run item replace entity @s enderchest.17 with air
execute unless items entity @s enderchest.18 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:18b}] run item replace entity @s enderchest.18 with air
execute unless items entity @s enderchest.19 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:19b}] run item replace entity @s enderchest.19 with air
execute unless items entity @s enderchest.20 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:20b}] run item replace entity @s enderchest.20 with air
execute unless items entity @s enderchest.21 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:21b}] run item replace entity @s enderchest.21 with air
execute unless items entity @s enderchest.22 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:22b}] run item replace entity @s enderchest.22 with air
execute unless items entity @s enderchest.23 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:23b}] run item replace entity @s enderchest.23 with air
execute unless items entity @s enderchest.24 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:24b}] run item replace entity @s enderchest.24 with air
execute unless items entity @s enderchest.25 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:25b}] run item replace entity @s enderchest.25 with air
execute unless items entity @s enderchest.26 *[custom_data~{elements:enderchest_item}] if data entity @s EnderItems[{Slot:26b}] run item replace entity @s enderchest.26 with air

