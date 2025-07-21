
tag @s add this
execute as @e[type=marker,tag=weapon.tip] if score @s ex.generic.id = @n[type=item_display,tag=this] ex.generic.id run kill @s
execute as @e[type=block_display,tag=character.camera] if score @s ex.generic.id = @n[type=item_display,tag=this] ex.generic.id run kill @s
execute as @e[type=text_display,tag=character.nameplate] if score @s ex.generic.id = @n[type=item_display,tag=this] ex.generic.id run kill @s
tag @s remove this

execute if entity @s[tag=aj.gustave.root] run return run function animated_java:gustave/remove/this