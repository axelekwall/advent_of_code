File.read!("../input.txt")
|> String.splitter("\n")
|> Enum.reduce([0], fn el, list ->
  case el do
    "" ->
      [0 | list]

    _ ->
      list |> List.update_at(0, fn element -> element + String.to_integer(el) end)
  end
end)
|> Enum.max()
|> IO.puts()
