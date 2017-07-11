defmodule DictionaryTest do
  use ExUnit.Case

  test "can start an agent" do
    { :ok, pid } = Dictionary.start_link
    assert Process.alive?(pid)
  end

  test "can return a random word" do
    { :ok, pid } = Dictionary.start_link
    assert Dictionary.random_word(pid) == "not_so_random"
  end

end
