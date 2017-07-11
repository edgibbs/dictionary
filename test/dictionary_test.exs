defmodule DictionaryTest do
  use ExUnit.Case

  test "can return a random word" do
    assert Dictionary.random_word() == "not_so_random"
  end

end
