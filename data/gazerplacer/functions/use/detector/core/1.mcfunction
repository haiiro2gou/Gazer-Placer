#> gazerplacer:use/detector/core/1
# @within function
#   gazerplacer:use/detector/main
#   gazerplacer:use/detector/core/1

# flag
    scoreboard players set $1 Ashen.GazerPlacer.Detector 1
# break flag
    execute if block ^ ^ ^0.5 #gazerplacer:air if block ^ ^ ^-0.5 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.5 #gazerplacer:air if block ^ ^ ^-0.5 #gazerplacer:air rotated as 1-0-ce2-0-1 if block ^ ^ ^0.5 #gazerplacer:air if block ^ ^ ^-0.5 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.5 #gazerplacer:air if block ^ ^ ^-0.5 #gazerplacer:air run scoreboard players set $1 Ashen.GazerPlacer.Detector 0

# if flag remains, go deep
    execute if score $1 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^-0.25 run function gazerplacer:use/detector/core/2
    execute if score $1 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^0.25 run function gazerplacer:use/detector/core/2
# if not, go loop
    scoreboard players remove $MaxDistance Ashen.GazerPlacer.Detector 1
    execute if score $MaxDistance Ashen.GazerPlacer.Detector matches 1.. positioned ^ ^ ^1 run function gazerplacer:use/detector/core/1
