defmodule Taskr.Task do
  use Ecto.Schema

  schema "task" do
    field :description, :string
    field :is_done, :boolean
  end

  def changeset(task, params \\ %{}) do
    task
    |> Ecto.Changeset.cast(params, [:description, :is_done])
    |> Ecto.Changeset.validate_required([:description])
    |> Ecto.Changeset.validate_length(:description, max: 255)
  end
end