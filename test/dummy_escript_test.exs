defmodule DummyEscriptTest do
  use ExUnit.Case
  doctest DummyEscript

  test "greets the world" do
    assert DummyEscript.hello() == :world
  end
end
