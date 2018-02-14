defmodule Taskr do
  def add(description) do
    new_task = %Taskr.Task{description: description}
    Taskr.Repo.insert(new_task)
  end
end
