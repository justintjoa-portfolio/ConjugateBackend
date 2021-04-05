defmodule ApiExample.Repo.Migrations.Excercises do
  use Ecto.Migration

  def change do
    create table(:excercises, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :weight, :integer, default: 0
      add :reps, :integer, default: 0
      add :RPE, :integer, default: 0
      add :name, :string, null: false
      
      timestamps()
    end
  end
end
