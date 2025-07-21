execute if score @s ex.player.input_cooldown matches 1.. run return fail

execute if predicate ex:a run return run function ex:player/menu/left
execute if predicate ex:d run return run function ex:player/menu/right
execute if predicate ex:jump run return run function ex:player/menu/space
execute if predicate ex:w run return run function ex:player/menu/up
execute if predicate ex:s run return run function ex:player/menu/down