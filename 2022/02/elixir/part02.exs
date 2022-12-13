Code.require_file("./rps.exs")

File.read!("../input.txt")
|> String.splitter("\n")
|> Enum.map(fn row ->
  [opp, res] =
    row
    |> String.split()
    |> fn [opp, res] -> [RPS.parseInput(opp), RPS.parseResult(res)] end
end)
|> Enum.sum()
|> IO.puts()
