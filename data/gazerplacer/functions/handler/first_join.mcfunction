#> gazerplacer:handler/first_join
# @within function gazerplacer:tick/player

#> private
# @private
    #declare score_holder $Index

# User ID
    execute store result score $Index Ashen.GazerPlacer.Temporary run data get storage gazerplacer:player Count 1
    scoreboard players add $Index Ashen.GazerPlacer.Temporary 1
    execute store result storage gazerplacer:player Count int 1 run scoreboard players get $Index Ashen.GazerPlacer.Temporary
    scoreboard players operation @s Ashen.GazerPlacer.UserID = $Index Ashen.GazerPlacer.Temporary
    function gazerplacer:config/init

# ロッド
    function gazerplacer:give

# リセット
    scoreboard players reset $Index Ashen.GazerPlacer.Temporary
