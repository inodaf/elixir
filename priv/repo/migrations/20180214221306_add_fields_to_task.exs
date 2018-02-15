defmodule Taskr.Repo.Migrations.AddFieldsToTask do
  use Ecto.Migration

  def change do
    alter table(:task) do
      add :is_done, :boolean, default: false
    end
  end
end
