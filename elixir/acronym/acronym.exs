defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
    |> String.split(~r/(?=\p{Lu})|[ -]/u)
    |> Enum.reduce("", fn(x, acc) -> acc <> String.upcase(String.slice(x, 0..0)) end )

  end
end
