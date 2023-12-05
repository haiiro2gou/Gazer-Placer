#> gazerplacer:detector/core/check
# @within function gazerplacer:detector/core/32

#> private
# @private
    #declare score_holder $Face

# face
    scoreboard players set $Face Ashen.GazerPlacer.Detector 0

# xy,yz面
    scoreboard players set @s Ashen.GazerPlacer.Detector 0
# 何本の辺に対して右を向いているかをカウント
    execute unless entity @s[y_rotation=90..180] align xyz positioned ~ ~ ~ facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute unless entity @s[y_rotation=-180..-90] align xyz positioned ~1 ~ ~ facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute unless entity @s[y_rotation=0..90] align xyz positioned ~ ~ ~1 facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute unless entity @s[y_rotation=-90..0] align xyz positioned ~1 ~ ~1 facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
# 角度と数をもとに面を取得
    execute if entity @s[y_rotation=0..180] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~1 ~ ~ #gazerplacer:air unless entity @s[y_rotation=0..90,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=90..180,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 1
    execute if entity @s[y_rotation=-90..90] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~ ~ ~-1 #gazerplacer:air unless entity @s[y_rotation=-90..0,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=0..90,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 2
    execute if entity @s[y_rotation=-180..0] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~-1 ~ ~ #gazerplacer:air unless entity @s[y_rotation=-180..-90,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=-90..0,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 3
    execute unless entity @s[y_rotation=-90..90] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~ ~ ~1 #gazerplacer:air unless entity @s[y_rotation=90..180,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=-180..-90,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 4

# xz上面
    scoreboard players set @s Ashen.GazerPlacer.Detector 0
# 何本の辺に対して上を向いているかをカウント
    execute align xyz positioned ~ ~1 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~1 ~1 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~1 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~1 ~1 facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
# 角度と数をもとに面を取得
    execute if entity @s[x_rotation=-180..0,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=0..180,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=0..180,scores={Ashen.GazerPlacer.Detector=2}] if block ~ ~1 ~ #gazerplacer:air run scoreboard players set $Face Ashen.GazerPlacer.Detector 5

# xz下面
    scoreboard players set @s Ashen.GazerPlacer.Detector 0
# 何本の辺に対して下を向いているかをカウント
    execute align xyz positioned ~ ~ ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~1 ~ ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~ ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~ ~1 facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
# 角度と数をもとに面を取得
    execute if entity @s[x_rotation=0..180,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=-180..0,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Face Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=-180..0,scores={Ashen.GazerPlacer.Detector=2}] if block ~ ~-1 ~ #gazerplacer:air run scoreboard players set $Face Ashen.GazerPlacer.Detector 6

# exec
    execute if score $Face Ashen.GazerPlacer.Detector matches 1 run data modify storage gazerplacer:exec Detector.Facing set value "east"
    execute if score $Face Ashen.GazerPlacer.Detector matches 2 run data modify storage gazerplacer:exec Detector.Facing set value "north"
    execute if score $Face Ashen.GazerPlacer.Detector matches 3 run data modify storage gazerplacer:exec Detector.Facing set value "west"
    execute if score $Face Ashen.GazerPlacer.Detector matches 4 run data modify storage gazerplacer:exec Detector.Facing set value "south"
    execute if score $Face Ashen.GazerPlacer.Detector matches 5 run data modify storage gazerplacer:exec Detector.Facing set value "up"
    execute if score $Face Ashen.GazerPlacer.Detector matches 6 run data modify storage gazerplacer:exec Detector.Facing set value "down"
    execute if score $Face Ashen.GazerPlacer.Detector matches 1..6 run summon marker ~ ~ ~ {UUID: [I; 1, 3298, 0, 0]}
    execute if score $Face Ashen.GazerPlacer.Detector matches 1..6 run data modify storage gazerplacer:exec Detector.Position set from entity 1-0-ce2-0-0 Pos
    execute if score $Face Ashen.GazerPlacer.Detector matches 1..6 run kill 1-0-ce2-0-0

# score reset
    execute if score $Face Ashen.GazerPlacer.Detector matches 1..6 store result score #1 Ashen.GazerPlacer.Detector store result score #05 Ashen.GazerPlacer.Detector store result score #025 Ashen.GazerPlacer.Detector store result score #0125 Ashen.GazerPlacer.Detector store result score #00625 Ashen.GazerPlacer.Detector store result score #003125 Ashen.GazerPlacer.Detector run scoreboard players set #loop Ashen.GazerPlacer.Detector 0
    scoreboard players reset $Face Ashen.GazerPlacer.Detector
