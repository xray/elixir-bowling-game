defmodule ElixirBowlingGameTest do
  use ExUnit.Case
  doctest ElixirBowlingGame

  test "score is 0 when given a gutter game" do
    game = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    assert ElixirBowlingGame.calculateScore(game) == 0
  end
end
