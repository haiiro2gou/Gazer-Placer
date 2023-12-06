#> gazerplacer:use/detector/core/2
# @within function
#   gazerplacer:use/detector/core/1

# flag
    scoreboard players set $2 Ashen.GazerPlacer.Detector 1
# break flag
    execute if block ^ ^ ^0.25 #gazerplacer:air if block ^ ^ ^-0.25 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.25 #gazerplacer:air if block ^ ^ ^-0.25 #gazerplacer:air rotated as 1-0-ce2-0-1 if block ^ ^ ^0.25 #gazerplacer:air if block ^ ^ ^-0.25 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.25 #gazerplacer:air if block ^ ^ ^-0.25 #gazerplacer:air run scoreboard players set $2 Ashen.GazerPlacer.Detector 1

# if flag remains, go deep
    execute if score $2 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^-0.125 run function gazerplacer:use/detector/core/4
    execute if score $2 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^0.125 run function gazerplacer:use/detector/core/4
