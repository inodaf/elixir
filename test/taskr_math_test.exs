defmodule TaskrTest.Math do
  use ExUnit.Case
  doctest Taskr.Math

  test "Multiply a provided number and multiplier" do
    assert Taskr.Math.multiply(3, 5) === {:ok, 15}
  end

  test "Multiply a provided list of numbers" do
    assert Taskr.Math.multiply([2, 3, 8], 3) === {:ok, [6, 9, 24]}
  end

  test "Should return `:err_empty_list` if List has no value" do
    assert Taskr.Math.multiply([], 3) === {:err_empty_list}
  end

  test "Check if List has values" do
    assert Taskr.Math.has_values?([1, 2, 3]) === true
  end

  test "If List has no value return falsy" do
    assert Taskr.Math.has_values?([]) === false
  end
end
