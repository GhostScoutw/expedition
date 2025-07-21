tag @s add this.character
execute as @e[type=block_display,tag=character.camera] if score @s ex.generic.id = @n[tag=this.character] ex.generic.id run tag @s add this.camera
execute as @a if score @s ex.generic.id = @n[tag=this.character] ex.generic.id run tag @s add this.player
execute as @e[type=block_display,tag=menu] if score @s ex.generic.id = @n[tag=this.character] ex.generic.id run tag @s add these.menu




execute if entity @s[tag=!encounter] if entity @n[tag=encounter_point,distance=..5] run function ex:character/encounter/start
execute unless entity @n[tag=encounter_point,distance=..5] run tag @s remove encounter
execute if entity @n[tag=encounter_point,distance=..5] run tag @s add encounter

execute unless entity @s[tag=encounter] run function ex:character/encounter/exit

execute unless entity @s[tag=encounter] run tp @n[type=block_display,tag=this.camera] ~-2 ~6 ~-2 facing ~ ~ ~
execute if entity @s[tag=encounter] run function ex:character/encounter/tick

execute unless entity @p[tag=this.player] run function ex:character/remove/this

tag @e[tag=these.menu] remove these.menu
tag @a[tag=this.player] remove this.player
tag @e[tag=this.camera] remove this.camera
tag @s remove this.character