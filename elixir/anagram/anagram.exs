defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do

    candidates
    |> Enum.filter( &(anagram?(base,&1)))
  end

  defp anagram?(a, b) do
    String.downcase(a) != String.downcase(b) && sort(a) == sort(b)
  end

  defp sort(a) do
    a
    |> String.downcase
    |> String.codepoints
    |> Enum.sort
  end

end
