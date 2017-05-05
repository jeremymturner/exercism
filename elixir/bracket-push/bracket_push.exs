defmodule BracketPush do
  @doc """
  Checks that all the brackets and braces in the string are matched correctly, and nested correctly
  """

  @o ['{', '[', '(' ]
  @c ['}', ']', ')' ]
  @p Enum.zip(@o,@c)

  @spec check_brackets(String.t) :: boolean
  def check_brackets(str) do

    result == []
    str
    |> String.codepoints
    |> Enum.reduce(result, &reducer/2)
    result == []
  end

  defp reducer(item, []) do
    cond do
      Enum.member?(@o,item) -> [item]
      true -> []
    end
  end

  defp reducer(x, acc = [head|tail]) do

  end
end
