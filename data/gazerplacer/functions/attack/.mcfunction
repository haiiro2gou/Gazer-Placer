#> gazerplacer:attack/
# @within function gazerplacer:tick/player

# check data
    execute store result score $Match Ashen.GazerPlacer.Temporary run data modify entity @s attack.player set from entity @e[tag=this,limit=1] UUID

# exec
    execute if score $Match Ashen.GazerPlacer.Temporary matches 0 as @a[tag=this,limit=1] run function gazerplacer:attack/main

# reset
    scoreboard players reset $Match Ashen.GazerPlacer.Temporary
    data remove entity @s attack
