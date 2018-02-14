defmodule TaskrTest do
  use ExUnit.Case
  doctest Taskr

  test "Return the `:world` atom" do
    assert Taskr.hello() === :world
  end
end
