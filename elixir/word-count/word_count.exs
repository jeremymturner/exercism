defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.split( ~r{\s|_|,|\W\W} , trim: true)
    |> Enum.reduce(%{}, fn(i, acc) -> Map.update(acc, i, Map.get(acc, i, 0) + 1, fn (x) -> x + 1 end ) end )
  end
end
