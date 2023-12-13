#> gazerplacer:load/
# @within tag/function ashen_lib:load

# リリースチェック
    data modify storage global Ashen.GazerPlacer.IsProduction set value false

# 初回限定ロード
    execute if data storage global Ashen.GazerPlacer{IsProduction: 1b} unless data storage global Ashen.GazerPlacer.Version run function gazerplacer:load/once
    execute if data storage global Ashen.GazerPlacer{IsProduction: 0b} run function gazerplacer:load/once

# マイグレーション
    function gazerplacer:migration/
