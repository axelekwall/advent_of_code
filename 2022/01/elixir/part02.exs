File.read!("../input.txt")
|> String.splitter("\n")
|> Enum.chunk_while(
  0,
  fn el, acc ->
    case el do
      "" ->
        {:cont, acc, 0}

      _ ->
        {:cont, acc + String.to_integer(el)}
    end
  end,
  fn acc -> {:cont, acc} end
)
|> Enum.sort(:desc)
|> Enum.slice(0..2)
|> Enum.sum()
|> IO.puts()
