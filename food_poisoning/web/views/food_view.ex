defmodule FoodPoisoning.FoodView do
  use FoodPoisoning.Web, :view

  def render("index.json", %{food: food}) do
    %{data: render_many(food, FoodPoisoning.FoodView, "food.json")}
  end

  def render("show.json", %{food: food}) do
    %{data: render_one(food, FoodPoisoning.FoodView, "food.json")}
  end

  def render("food.json", %{food: food}) do
    %{id: food.id,
      foodId: food.food_id,
      name: food.name,
      caloriesPerHundredGrams: food.calories_per_hundred_grams}
  end
end
