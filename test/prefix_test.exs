defmodule PrefixTest do
  use ExUnit.Case
  doctest Prefix

  test "Trim common prefix" do
    assert Prefix.main("abc", "abb") == [[2, ["a", "b"]], [1, ["c"]], [1, ["b"]]]
  end

  test "Format should be length and string" do
    assert Prefix.formatResult("abc", "abb") == ["2 ab", "1 c", "1 b"]
  end
end
