defmodule FoodPoisoning.Repo.Migrations.CreateFood do
  use Ecto.Migration

  def change do
    create table(:food) do
      add :food_id, :uuid
      add :name, :string
      add :calories_per_hundred_grams, :float

      timestamps
    end

  end
end
