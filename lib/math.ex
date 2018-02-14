defmodule Taskr.Math do
  def multiply(number, multiplier) when is_integer(number) do
    calculation = number * multiplier
    {:ok, calculation}
  end

  def multiply(numbers, multiplier) do
    import Enum, only: [map: 2]

    calculation = case has_values?(numbers) do
      true -> map(numbers, fn n -> multiply(n, multiplier) end)
      false -> {:err_empty_list}
    end

    if is_list(calculation) do
      {:ok, Keyword.get_values(calculation, :ok)}
    else
      calculation
    end
  end

  def has_values?(list) when is_list(list) do
    length(list) > 0
  end
end
