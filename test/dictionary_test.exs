defmodule DictionaryTest do
  use ExUnit.Case

  test "can start and return the wordlist" do
    assert Dictionary.start == ["not_so_random"]
  end

  test "can return a random word" do
    assert Dictionary.random_word(["not_so_random"]) == "not_so_random"
  end

end
