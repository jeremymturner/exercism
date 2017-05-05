defmodule Bob do
  def hey(input) do
    cond do
        question?(input) -> "Sure."
        yell?(input) -> "Whoa, chill out!"
        empty?(input) -> "Fine. Be that way!"
        true -> "Whatever."

    end
  end

  defp question?(input), do: String.ends_with?(input, "?")
  defp yell?(input), do: String.upcase(input) == input && String.match?(input, ~r/\p{L}/u)
  defp empty?(input), do: String.length(String.trim(input)) == 0
end
