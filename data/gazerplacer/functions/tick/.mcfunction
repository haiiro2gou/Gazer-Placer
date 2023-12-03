#> gazerplacer:tick/
# @within tag/function minecraft:tick

# kill click checker
    execute as @e[tag=Ashen.GazerPlacer.Interaction] unless score @s Ashen.GazerPlacer.UserID matches -2147483648..2147483647 run kill @s

# player
    execute as @a at @s run function gazerplacer:tick/player
