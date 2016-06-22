defmodule FoodPoisoning.FoodController do
  use FoodPoisoning.Web, :controller

  alias FoodPoisoning.Food

  plug :scrub_params, "food" when action in [:create, :update]

  def index(conn, _params) do
    food = Repo.all(Food)
    render(conn, "index.json", food: food)
  end

  def create(conn, %{"food" => food_params}) do
    changeset = Food.changeset(%Food{}, food_params)

    case Repo.insert(changeset) do
      {:ok, food} ->
        conn
        |> put_status(:created)
        |> put_resp_header("location", food_path(conn, :show, food))
        |> render("show.json", food: food)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(FoodPoisoning.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    food = Repo.get!(Food, id)
    render(conn, "show.json", food: food)
  end

  def update(conn, %{"id" => id, "food" => food_params}) do
    food = Repo.get!(Food, id)
    changeset = Food.changeset(food, food_params)

    case Repo.update(changeset) do
      {:ok, food} ->
        render(conn, "show.json", food: food)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(FoodPoisoning.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    food = Repo.get!(Food, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(food)

    send_resp(conn, :no_content, "")
  end
end
