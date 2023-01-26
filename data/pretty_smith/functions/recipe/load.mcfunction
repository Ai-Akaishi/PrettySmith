#> pretty_smith:recipe/load
# カスタム鍛冶レシピを読み込む
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## PrettySmithのスペース指定があれば読み込ませる
execute if data storage pretty_crafter: recipe_space{Name:"PrettySmith"} run data modify storage pretty_crafter: recipes set from storage pretty_smith: recipes
