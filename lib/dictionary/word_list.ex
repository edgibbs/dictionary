defmodule Dictionary.WordList do
  @file_system Application.get_env(:dictionary, :file_system, File)

  def start_link() do
    Agent.start_link(&word_list/0)
  end

  def random_word(agent) do
    Agent.get(agent, &Enum.random/1)
  end

  defp word_list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> @file_system.read!
    |> String.split(~r/\n/)
  end
end
