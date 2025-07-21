

execute if predicate ex:a as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s -135 0
execute if predicate ex:d as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s 45 0
execute if predicate ex:s as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s 135 0
execute if predicate ex:w as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s -45 0


execute if predicate ex:a if predicate ex:w as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s -90 0
execute if predicate ex:a if predicate ex:s as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s 180 0

execute if predicate ex:d if predicate ex:w as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s 0 0
execute if predicate ex:d if predicate ex:s as @n[type=item_display,tag=character,tag=this.character] at @s run rotate @s 90 0

execute as @n[type=item_display,tag=character,tag=this.character] run function ex:player/movement/get_tag

#execute if predicate ex:sprint run say sprinting

execute unless predicate ex:any as @n[type=item_display,tag=character,tag=this.character] run function animated_java:gustave/animations/roam.idle/play

execute if predicate ex:any unless predicate ex:sprint as @n[type=item_display,tag=character,tag=this.character,tag=!walking] run function animated_java:gustave/animations/roam.walk/play
execute if predicate ex:any if predicate ex:sprint as @n[type=item_display,tag=character,tag=this.character,tag=!running] run function animated_java:gustave/animations/roam.run/play


execute as @n[type=item_display,tag=character,tag=this.character,tag=walking] at @s run function ex:player/movement/move
execute as @n[type=item_display,tag=character,tag=this.character,tag=running] at @s run function ex:player/movement/move

execute as @n[type=item_display,tag=character,tag=this.character] run function ex:player/movement/remove_tag
