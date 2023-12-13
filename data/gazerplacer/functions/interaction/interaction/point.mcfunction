#> gazerplacer:interaction/interaction/point
# @deprecated

# point particle
    particle dust 255 0 0 0.5 ~ ~ ~ 0 0 0 0 1

# block particle
    execute align xyz positioned ~ ~0.5 ~0.5 run particle dust 0 0.7 0 0.5 ~ ~ ~ 0 0 0 0 1
    execute align xyz positioned ~1 ~0.5 ~0.5 run particle dust 0 0.7 0 0.5 ~ ~ ~ 0 0 0 0 1
    execute align xyz positioned ~0.5 ~ ~0.5 run particle dust 0 0.7 0 0.5 ~ ~ ~ 0 0 0 0 1
    execute align xyz positioned ~0.5 ~1 ~0.5 run particle dust 0 0.7 0 0.5 ~ ~ ~ 0 0 0 0 1
    execute align xyz positioned ~0.5 ~0.5 ~ run particle dust 0 0.7 0 0.5 ~ ~ ~ 0 0 0 0 1
    execute align xyz positioned ~0.5 ~0.5 ~1 run particle dust 0 0.7 0 0.5 ~ ~ ~ 0 0 0 0 1

# facing particle
    execute if score #Face Ashen.GazerPlacer.Detector matches 1 align xyz positioned ~1 ~0.5 ~0.5 run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score #Face Ashen.GazerPlacer.Detector matches 2 align xyz positioned ~0.5 ~0.5 ~ run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score #Face Ashen.GazerPlacer.Detector matches 3 align xyz positioned ~ ~0.5 ~0.5 run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score #Face Ashen.GazerPlacer.Detector matches 4 align xyz positioned ~0.5 ~0.5 ~1 run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score #Face Ashen.GazerPlacer.Detector matches 5 align xyz positioned ~0.5 ~1 ~0.5 run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 1
    execute if score #Face Ashen.GazerPlacer.Detector matches 6 align xyz positioned ~0.5 ~ ~0.5 run particle dust 0 0 1 0.5 ~ ~ ~ 0 0 0 0 1
