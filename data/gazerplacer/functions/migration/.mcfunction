#> gazerplacer:migration/
# @within function gazerplacer:load/main

execute if data storage global Ashen.GazerPlacer{Version: "v0.0.0"} run function gazerplacer:migration/v0.0.1/
