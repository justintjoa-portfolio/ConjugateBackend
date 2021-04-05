defmodule ApiExample.Repo.Migrations.TodosAddColumnToExcercises do
  use Ecto.Migration

  def change do
    alter table("excercises") do
      add :userid, :string
    end 
  end
end
