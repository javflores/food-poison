defmodule FoodPoisoning.FoodTest do
  use FoodPoisoning.ModelCase

  alias FoodPoisoning.Food

  @valid_attrs %{calories_per_hundred_grams: "120.5", food_id: "7488a646-e31f-11e4-aace-600308960662", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Food.changeset(%Food{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Food.changeset(%Food{}, @invalid_attrs)
    refute changeset.valid?
  end
end
