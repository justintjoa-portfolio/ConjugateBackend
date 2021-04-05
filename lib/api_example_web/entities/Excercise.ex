defmodule Excercise do
  use Ecto.Schema
  @primary_key {:id, Ecto.UUID, autogenerate: true}


  schema "excercises" do
      field :userid, :string, null: false
      field :weight, :integer, default: 0
      field :reps, :integer, default: 0
      field :RPE, :integer, default: 0
      field :name, :string, null: false


      timestamps()
  end
end