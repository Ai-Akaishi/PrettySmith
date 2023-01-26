# Pretty Smith

This Datapack allows you to create custom crafts on 1.20 blacksmithing tables easily.  
1.20の鍛冶台でのカスタムクラフトが簡単に作れちゃうデータパック  

## 動作確認済みバージョン / Verified minecraft versions

- 1.20 snapshot(23w04a)

## 一緒に入れてね / Dependencies

Player Item Tuner(<https://github.com/Ai-Akaishi/PlayerItemTuner>)  
Pretty Crafter(<https://github.com/Ai-Akaishi/PrettyCrafter>)  
AiMath(<https://github.com/Ai-Akaishi/AiMath>)  

## 使い方 / How To Use

### レシピの登録 / Register Recipes

１．あなたのデータパックで鍛冶台のレシピの素材を登録してね。  
itemは好きなアイテムに変えてOK！  
１．Register materials of the recipe for the smithing table in your datapack.  
You can change the "item"s to any item you like!

```json
> your_namespace/recipes/your_recipes.json  
{  
  "type": "minecraft:smithing_trim",  
  "template": {  
    "item": "minecraft:feather"  
  },  
  "base": {  
    "item": "minecraft:stick"  
  },  
  "addition": {  
    "item": "minecraft:flint"  
  }  
}  
```
  
２．完成品とレシピとの関係をコマンドで登録してね。  
２．Register the recipe and the result item with the commands below.  
  
```nim
# 素材を指定します。 / Specify materials.
data modify storage pretty_smith: template set value "minecraft:feather"
data modify storage pretty_smith: base set value {id:"minecraft:stick"}
data modify storage pretty_smith: addition set value "minecraft:flint"
# 完成品を指定します。 / Specify the result item.
data modify storage pretty_smith: result set value {id:"minecraft:arrow",Count:4b,tag:{display:{Name:'{"text":"鍛冶台で作っただけの普通の矢","italic":false,"color":"light_purple"}'}}}
# レシピを登録します。 / Register the recipe.
function #pretty_smith:add
```

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
