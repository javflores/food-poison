defmodule FoodPoisoning.Food do
  use FoodPoisoning.Web, :model

  schema "food" do
    field :food_id, Ecto.UUID
    field :name, :string
    field :calories_per_hundred_grams, :float

    timestamps
  end

  @required_fields ~w(food_id name calories_per_hundred_grams)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
