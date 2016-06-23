defmodule FoodPoisoning.FoodControllerTest do
  use FoodPoisoning.ConnCase

  alias FoodPoisoning.Food
  @valid_attrs %{calories_per_hundred_grams: "120.5", food_id: "7488a646-e31f-11e4-aace-600308960662", name: "some content"}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, food_path(conn, :index)
    assert json_response(conn, 200) == []
  end

  test "shows chosen resource", %{conn: conn} do
    food = Repo.insert! %Food{}
    conn = get conn, food_path(conn, :show, food)
    assert json_response(conn, 200)["data"] == %{"id" => food.id,
      "foodId" => food.food_id,
      "name" => food.name,
      "caloriesPerHundredGrams" => food.calories_per_hundred_grams}
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, food_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, food_path(conn, :create), food: @valid_attrs
    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(Food, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, food_path(conn, :create), food: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    food = Repo.insert! %Food{}
    conn = put conn, food_path(conn, :update, food), food: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Food, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    food = Repo.insert! %Food{}
    conn = put conn, food_path(conn, :update, food), food: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    food = Repo.insert! %Food{}
    conn = delete conn, food_path(conn, :delete, food)
    assert response(conn, 204)
    refute Repo.get(Food, food.id)
  end
end
