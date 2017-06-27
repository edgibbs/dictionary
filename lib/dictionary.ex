defmodule Dictionary do
  @file_system Application.get_env(:dictionary, :file_system, File)

  def random_word do
    word_list() |> Enum.random
  end

  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> @file_system.read!
    |> String.split(~r/\n/)
  end
end
