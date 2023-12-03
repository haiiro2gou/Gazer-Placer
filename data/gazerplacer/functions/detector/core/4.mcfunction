#> gazerplacer:detector/core/4
# @within function
#   gazerplacer:detector/main
#   gazerplacer:detector/core/2

# flag
    scoreboard players set $4 Ashen.GazerPlacer.Detector 1
# break flag
    execute if block ^ ^ ^0.125 #gazerplacer:air if block ^ ^ ^-0.125 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.125 #gazerplacer:air if block ^ ^ ^-0.125 #gazerplacer:air rotated as 1-0-ce2-0-1 if block ^ ^ ^0.125 #gazerplacer:air if block ^ ^ ^-0.125 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.125 #gazerplacer:air if block ^ ^ ^0.125 #gazerplacer:air run scoreboard players set $4 Ashen.GazerPlacer.Detector 0

# if flag remains, go deep
    execute if score $4 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^-0.0625 run function gazerplacer:detector/core/8
    execute if score $4 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^0.0625 run function gazerplacer:detector/core/8
