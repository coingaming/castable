defmodule CastableTest do
  use ExUnit.Case
  doctest Castable

  test "greets the world" do
    assert Castable.hello() == :world
  end
end
