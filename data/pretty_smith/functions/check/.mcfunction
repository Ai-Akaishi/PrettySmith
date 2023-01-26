#> pretty_smith:check/
# 鍛冶結果チェック
### Copyright © 2023 赤石愛

data modify storage pretty_smith: items set value []
data modify storage pretty_smith: items append from entity @s Inventory[{tag:{Trim:{}}}]
data remove storage pretty_smith: items[{tag:{Trim:{CustomSmith:"Checked"}}}]

execute if data storage pretty_smith: items[0] run function pretty_smith:check/seek

advancement revoke @s only pretty_smith:check
