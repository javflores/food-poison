# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     FoodPoisoning.Repo.insert!(%FoodPoisoning.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "pint of beer", calories_per_hundred_grams: 128.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "glass of wine", calories_per_hundred_grams: 87.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "french baguette", calories_per_hundred_grams: 360.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "one biscuit", calories_per_hundred_grams: 74.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "pastry", calories_per_hundred_grams: 287.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "doughnut", calories_per_hundred_grams: 140.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "1 slice bread brown", calories_per_hundred_grams: 74.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "corn flakes", calories_per_hundred_grams: 180.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "porridge", calories_per_hundred_grams: 180.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "shredded wheat", calories_per_hundred_grams: 150.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "beef sauge", calories_per_hundred_grams: 140.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "fillet steak", calories_per_hundred_grams: 54.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "egg fried rice", calories_per_hundred_grams: 250.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "crisps", calories_per_hundred_grams: 132.0})
FoodPoisoning.Repo.insert!(%FoodPoisoning.Food{name: "bar", calories_per_hundred_grams: 94.0})

#http://www.weightlossresources.co.uk/calories/calorie_counter.htm