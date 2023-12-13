#> gazerplacer:detector/core/8
# @within function
#   gazerplacer:detector/core/4

# flag
    scoreboard players set #8 Ashen.GazerPlacer.Detector 1
# break flag
    execute if block ^ ^ ^0.0625 #gazerplacer:air if block ^ ^ ^-0.0625 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.0625 #gazerplacer:air if block ^ ^ ^-0.0625 #gazerplacer:air rotated as 1-0-ce2-0-1 if block ^ ^ ^0.0625 #gazerplacer:air if block ^ ^ ^-0.0625 #gazerplacer:air rotated ~180 ~ if block ^ ^ ^0.0625 #gazerplacer:air if block ^ ^ ^-0.0625 #gazerplacer:air run scoreboard players set #8 Ashen.GazerPlacer.Detector 0

# if flag remains, go deep
    execute if score #8 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^-0.03125 run function gazerplacer:detector/core/16
    execute if score #8 Ashen.GazerPlacer.Detector matches 1 positioned ^ ^ ^0.03125 run function gazerplacer:detector/core/16
