defmodule Excercise do
  use Ecto.Schema
  @primary_key {:id, Ecto.UUID, autogenerate: true}


  schema "excercises" do
      add :userid, :string, null: false
      add :weight, :integer, default: 0
      add :reps, :integer, default: 0
      add :RPE, :integer, default: 0
      add :name, :string, null: false


      timestamps()
  end
end