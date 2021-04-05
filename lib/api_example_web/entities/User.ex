defmodule User do
  use Ecto.Schema
  @primary_key {:id, Ecto.UUID, autogenerate: true}


  schema "users" do
      field :name, :string, null: false

  end
end