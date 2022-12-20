File.read!("../input.txt")
|> String.splitter("\n")
|> Enum.map(fn row ->
  halfRow = trunc(String.length(row) / 2)
  {a, b} = row |> String.split_at(halfRow)

  String.graphemes(a)
  |> Enum.filter(fn char -> b |> String.contains?(char) end)
  |> Enum.uniq()
  |> Enum.map(fn char ->
    asciiVal = char |> String.to_charlist() |> hd()

    cond do
      asciiVal >= 97 -> asciiVal - 96
      asciiVal < 97 -> asciiVal - 38
    end
  end)
  |> Enum.sum()
end)
|> Enum.sum()
|> IO.puts()
