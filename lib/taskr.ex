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
    task = get id, true
    # TODO: Update based on Schema
  end

  def get(id, raw \\ false) do
    task = Taskr.Task |> Taskr.Repo.get(id)

    if raw do
      task
    else
      [id: task.id, is_done: task.is_done, description: task.description]
    end
  end

  def list do
    Taskr.Task
    |> Taskr.Repo.all()
    |> Enum.map(fn t ->
      %{id: t.id, description: t.description, is_done: t.is_done}
    end)
  end
end