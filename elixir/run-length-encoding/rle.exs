defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(string) do
    string
    |> String.split("", trim: true)
    |> Enum.chunk_by( &(&1) )
    |> Enum.reduce("", fn (x,acc) -> acc <> "#{Enum.count(x)}#{List.first(x)}" end )
  end

  @spec decode(String.t) :: String.t
  def decode(string) do
    Regex.scan( ~r{\d*[A-Z]}, string)
    |> List.flatten
    |> Enum.reduce("", fn (x,acc) ->
                   {times, letter} = Integer.parse(x)
                    acc <> String.duplicate(letter,times)
    end )

    # If it's a number, add it to a number string
    # If it's a letter, look at the number string, multiply by the letter found, clear the number string
  end
end
