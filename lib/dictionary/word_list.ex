defmodule Dictionary.WordList do
  @file_system Application.get_env(:dictionary, :file_system, File)

  @me __MODULE__

  def start_link() do
    Agent.start_link(&word_list/0, name: @me)
  end

  def random_word() do
    Agent.get(@me, &Enum.random/1)
  end

  defp word_list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> @file_system.read!
    |> String.split(~r/\n/)
  end
end
