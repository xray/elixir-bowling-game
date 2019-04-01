defmodule ElixirBowlingGameTest do
  use ExUnit.Case
  doctest ElixirBowlingGame

  test "score is 0 when given a gutter game" do
    game = List.duplicate(0, 20)
    assert ElixirBowlingGame.calculate_score(game) == 0
  end

  test "it can score a game with a single roll" do
    game = [8 | List.duplicate(0, 19)]
    assert ElixirBowlingGame.calculate_score(game) == 8
  end

  test "it can score a game with two rolls" do
    game = [7, 2 | List.duplicate(0, 18)]
    assert ElixirBowlingGame.calculate_score(game) == 9
  end

  test "it can score a game with one spare" do
    game = [1, 9, 5 | List.duplicate(0, 17)]
    assert ElixirBowlingGame.calculate_score(game) == 20
  end

  test "it can score a game with one spare AND MORE ROLLS" do
    game = [1, 9, 5, 4 | List.duplicate(0, 16)]
    assert ElixirBowlingGame.calculate_score(game) == 24
  end

  test "it can score a game with two spares" do
    game = [1, 9, 5, 4, 7, 3, 2 | List.duplicate(0, 13)]
    assert ElixirBowlingGame.calculate_score(game) == 38
  end

  test "it can score a game with a strike" do
    game = [10, 5, 1 | List.duplicate(0, 16)]
    assert ElixirBowlingGame.calculate_score(game) == 22
  end

  test "it can score spare at the end of the game" do
    game = List.duplicate(0, 18) ++ [8, 2, 3]
    assert ElixirBowlingGame.calculate_score(game) == 13
  end

  test "it can score perfect game" do
    game = List.duplicate(10, 12)
    assert ElixirBowlingGame.calculate_score(game) == 300
  end

  test "it can score a typical game" do
    game = [6, 3, 6, 4, 6, 2, 4, 6, 10, 10, 3, 2, 5, 5, 4, 3, 3, 1]
    assert ElixirBowlingGame.calculate_score(game) == 121
  end
end
