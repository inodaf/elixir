defmodule Taskr.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :description, :string
    end
  end
end
