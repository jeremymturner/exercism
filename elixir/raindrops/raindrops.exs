defmodule Raindrops do

  @nums %{ 3 => "Pling" , 5 => "Plang", 7 => "Plong" }

  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    ou = div?(number,3) <> div?(number,5) <> div?(number,7)
    if(out == "", do: "#{number}", else: out)
  end

  def div?(number, number2) do
    if(rem(number,number2) == 0, do: Map.get(@nums, number2), else: "")
  end
end
