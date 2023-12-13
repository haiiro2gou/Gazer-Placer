#> gazerplacer:handler/first_join
# @within tag/function ashen_lib:handler/first_join

# Config
    function indexstorage:pull/
    data modify storage indexstorage: Config.GazerPlacer set value {NotifyResult: 0b, ReplaceMode: 0b}
    function gazerplacer:give
    function indexstorage:push/
