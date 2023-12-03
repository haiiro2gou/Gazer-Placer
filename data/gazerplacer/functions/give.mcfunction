#> gazerplacer:give
# @user

# 杖を出す
    execute in gazerplacer:clipboard run data modify block 0 0 0 Items set value []
    execute in gazerplacer:clipboard run loot replace block 0 0 0 container.0 loot gazerplacer:rod
    execute in gazerplacer:clipboard run loot give @s mine 0 0 0 debug_stick
