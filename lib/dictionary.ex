defmodule Dictionary do
  @file_system Application.get_env(:dictionary, :file_system, File)

  def random_word do
    Enum.random(word_list)
  end

  def word_list do
    contents = @file_system.read!("assets/words.txt")
    list = String.split(contents, ~r/\n/)
  end
end
