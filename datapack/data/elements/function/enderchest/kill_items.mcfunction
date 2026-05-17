# This file is used to kill the items that are used for the enderchest ui
# only did load.mcfunction and the collections so far have items with the custom_data tag "elements:enderchest_item"
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{elements:enderchest_item}}}}]
