defmodule MtgParserTest do
  use ExUnit.Case
  doctest MtgParser

  test "greets the world" do
    assert MtgParser.hello() == :world
  end
end
