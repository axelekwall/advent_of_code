defmodule RPS do
  def sum(x, y) do
    x + y
  end

  defp parseInput(a) do
    case a do
      "A" -> :rock
      "B" -> :paper
      "C" -> :scissors
      "X" -> parseInput("A")
      "Y" -> parseInput("B")
      "Z" -> parseInput("C")
    end
  end

  defp parseResult(x) do
    case x do
      "X" -> :lose
      "Y" -> :draw
      "Z" -> :win
    end
  end

  def basePoints(x) do
    case x do
      :rock -> 1
      :paper -> 2
      :scissors -> 3
    end
  end

  def gamePoints(x) do
    case x do
      :lose -> 0
      :draw -> 3
      :win -> 6
    end
  end

  def calcResult(opp, me) do
    case parseInput(opp) do
      :rock ->
        case parseInput(me) do
          :rock -> :draw
          :paper -> :win
          :scissors -> :lose
        end

      :paper ->
        case parseInput(me) do
          :rock -> :lose
          :paper -> :draw
          :scissors -> :win
        end

      :scissors ->
        case parseInput(me) do
          :rock -> :win
          :paper -> :lose
          :scissors -> :draw
        end
    end
  end

  def calcMove(opp, res) do
    case parseInput(opp) do
      :rock ->
        case parseResult(res) do
          :win -> :paper
          :draw -> :rock
          :lose -> :scissors
        end

      :paper ->
        case parseInput(res) do
          :rock -> :lose
          :paper -> :draw
          :scissors -> :win
        end

      :scissors ->
        case parseInput(res) do
          :rock -> :win
          :paper -> :lose
          :scissors -> :draw
        end
    end
  end
end
