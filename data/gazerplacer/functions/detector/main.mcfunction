#> gazerplacer:detector/main
# @within function gazerplacer:detector/

# clear base
    data remove storage gazerplacer: Detector
# prepare markers
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s run tp 1-0-ce2-0-1 ~ ~ ~ ~ ~
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 ~ positioned as @s run tp 1-0-ce2-0-2 ~ ~ ~ ~ ~
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 facing ~ 0.0 0.0 positioned as @s run tp 1-0-ce2-0-3 ~ ~ ~ ~ ~

# declares max distance
    scoreboard players set #MaxDistance Ashen.GazerPlacer.Detector 10
# main loop
    execute anchored eyes positioned ^ ^ ^0.5 run function gazerplacer:detector/core/1

# reset
    scoreboard players reset #MaxDistance Ashen.GazerPlacer.Detector
