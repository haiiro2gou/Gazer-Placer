#> gazerplacer:detector/core/check
# @within function gazerplacer:detector/core/32

#> private
# @private
    #declare score_holder $Result

# result
    scoreboard players set $Result Ashen.GazerPlacer.Detector 0

# xy,yz
    scoreboard players set @s Ashen.GazerPlacer.Detector 0
# get position
    execute unless entity @s[y_rotation=90..180] align xyz positioned ~ ~ ~ facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute unless entity @s[y_rotation=-180..-90] align xyz positioned ~1 ~ ~ facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute unless entity @s[y_rotation=0..90] align xyz positioned ~ ~ ~1 facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute unless entity @s[y_rotation=-90..0] align xyz positioned ~1 ~ ~1 facing entity @s eyes rotated ~ 0 positioned as @s positioned ^ ^ ^1000 rotated as @s rotated ~ 0 positioned ^1000 ^ ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
# get side
    execute if entity @s[y_rotation=0..180] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~1 ~ ~ #gazerplacer:air unless entity @s[y_rotation=0..90,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=90..180,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 1
    execute if entity @s[y_rotation=-90..90] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~ ~ ~-1 #gazerplacer:air unless entity @s[y_rotation=-90..0,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=0..90,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 2
    execute if entity @s[y_rotation=-180..0] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~-1 ~ ~ #gazerplacer:air unless entity @s[y_rotation=-180..-90,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=-90..0,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 3
    execute unless entity @s[y_rotation=-90..90] if score @s Ashen.GazerPlacer.Detector matches 1..2 if block ~ ~ ~1 #gazerplacer:air unless entity @s[y_rotation=90..180,scores={Ashen.GazerPlacer.Detector=2}] unless entity @s[y_rotation=-180..-90,scores={Ashen.GazerPlacer.Detector=1}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 4

# xz (upper)
    scoreboard players set @s Ashen.GazerPlacer.Detector 0
# get position
    execute align xyz positioned ~ ~1 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~1 ~1 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~1 ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~1 ~1 facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^-1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
# get side
    execute if entity @s[x_rotation=-180..0,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=0..180,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=0..180,scores={Ashen.GazerPlacer.Detector=2}] if block ~ ~1 ~ #gazerplacer:air run scoreboard players set $Result Ashen.GazerPlacer.Detector 5

# xz (belower)
    scoreboard players set @s Ashen.GazerPlacer.Detector 0
# get position
    execute align xyz positioned ~ ~ ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~1 ~ ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing 0.0 0.0 ~ positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-2 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~ ~ facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
    execute align xyz positioned ~ ~ ~1 facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 facing ~ 0.0 0.0 positioned as @s positioned ^ ^ ^-1000 rotated as 1-0-ce2-0-3 positioned ^ ^1000 ^1000 if entity @s[distance=..1000] run scoreboard players add @s Ashen.GazerPlacer.Detector 1
# get side
    execute if entity @s[x_rotation=0..180,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=-180..0,scores={Ashen.GazerPlacer.Detector=3..}] run scoreboard players set $Result Ashen.GazerPlacer.Detector 0
    execute if entity @s[x_rotation=-180..0,scores={Ashen.GazerPlacer.Detector=2}] if block ~ ~-1 ~ #gazerplacer:air run scoreboard players set $Result Ashen.GazerPlacer.Detector 6

# complete
    execute unless score $Result Ashen.GazerPlacer.Detector matches 1..6 run data modify storage gazerplacer:exec Detector.Check set value false
    execute if score $Result Ashen.GazerPlacer.Detector matches 1..6 run data modify storage gazerplacer:exec Detector.Check set value true
    execute if score $Result Ashen.GazerPlacer.Detector matches 1 run data modify storage gazerplacer:exec Detector.Facing set value "east"
    execute if score $Result Ashen.GazerPlacer.Detector matches 2 run data modify storage gazerplacer:exec Detector.Facing set value "north"
    execute if score $Result Ashen.GazerPlacer.Detector matches 3 run data modify storage gazerplacer:exec Detector.Facing set value "west"
    execute if score $Result Ashen.GazerPlacer.Detector matches 4 run data modify storage gazerplacer:exec Detector.Facing set value "south"
    execute if score $Result Ashen.GazerPlacer.Detector matches 5 run data modify storage gazerplacer:exec Detector.Facing set value "up"
    execute if score $Result Ashen.GazerPlacer.Detector matches 6 run data modify storage gazerplacer:exec Detector.Facing set value "down"
    execute if score $Result Ashen.GazerPlacer.Detector matches 1..6 run data modify storage gazerplacer:exec Detector.Position set from entity @s Pos

# reset
    scoreboard players reset $Result Ashen.GazerPlacer.Detector
