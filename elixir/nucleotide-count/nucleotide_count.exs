defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]
  @base_histogram %{ ?A => 0, ?C => 0, ?G => 0, ?T => 0 }

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    unless nucleotide in @nucleotides, do: raise ArgumentError
    strand
    |> histogram
    |> Map.get(nucleotide)

  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    unless valid_histogram?(strand), do: raise ArgumentError
    Enum.reduce( strand, @base_histogram, fn(i, acc) ->  Map.update!(acc, i, fn (x) -> x + 1 end ) end )
  end

  def valid_histogram?(strand) do
    Enum.all?(strand, &(&1 in @nucleotides))
  end

end
