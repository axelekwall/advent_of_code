Code.require_file("./rps.exs")

File.read!("../input.txt")
|> String.splitter("\n")
|> Enum.map(fn row ->
  [opp, me] = String.split(row)

  RPS.calcResult(opp, me)
  |> RPS.gamePoints()
  |> RPS.sum(RPS.basePoints(me))
end)
|> Enum.sum()
|> IO.puts()
