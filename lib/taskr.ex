defmodule Taskr do
  def create(description) do
    new_task = %Taskr.Task{description: description}

    with {:ok, map} <- Taskr.Repo.insert(new_task) do
      {:ok, map.id}
    else
      :error -> IO.puts "Error on create a new task."
    end
  end

  def mark_done(id) do
    task = get_raw id
    changeset = Taskr.Task.changeset task, %{is_done: true}
    {_, schema} = Taskr.Repo.update changeset

    Map.from_struct schema
  end

  def get(id) do
    task = get_raw id
    Map.from_struct task
  end

  def list() do
    import Ecto.Query

    Taskr.Task
    |> Ecto.Query.where(is_done: false)
    |> Taskr.Repo.all()
    |> Enum.map(fn t -> Map.from_struct(t) end)
  end

  defp get_raw(id) do
    Taskr.Task |> Taskr.Repo.get(id)
  end
end