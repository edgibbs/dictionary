defmodule Dictionary do

  alias Dictionary.WordList

  defdelegate start_link(), to: WordList
  defdelegate random_word(word_list), to: WordList
end
