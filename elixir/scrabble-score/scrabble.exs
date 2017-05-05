defmodule Scrabble do
  @doc """
  Calculate the scrabble score for the word.
  """


  @letters_map %{
    1 => ~w( a e i o u l n r s t ),
    2 => ~w( d g ),
    3 => ~w( b c m p ),
    4 => ~w( f h v w y ),
    5 => ~w( k ),
    8 => ~w( j x ),
    10 => ~w( q z )
  }

  @points_map for {point, letters_list} <- @letters_map, letter <- letters_list, into: %{}, do: { letter, point }

  @spec score(String.t) :: non_neg_integer
  def score(word) do

    word
    |> String.downcase
    |> String.replace( ~r([^a-z]), "")
    |> String.codepoints
    |> Enum.reduce( 0, fn (x, acc) -> acc + Map.get(@points_map, x, 0) end )

  end
end
