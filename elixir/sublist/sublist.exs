defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """

  def compare(a, b) do
    cond do
      # A is equal to B
      a === b -> :equal

      # A is a sublist of B
      sublist?(a,b)  -> :sublist

      # A is a superlist of B
      sublist?(b,a)  -> :superlist

      # A is not a superlist of, sublist of, or equal to B
      true -> :unequal
    end
  end

  defp sublist?([], _), do: true
  defp sublist?(a, b) do
    Stream.chunk(b, length(a), 1)
    |> Enum.any?(&(&1 ===a))
  end

end
