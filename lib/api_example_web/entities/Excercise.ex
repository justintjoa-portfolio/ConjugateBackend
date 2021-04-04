defmodule Excercise do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :weight, :integer, default: 0
    field :reps, :integer, default: 0
    field :RPE, :integer, default: 0
  end
end