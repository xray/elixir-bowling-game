defmodule ElixirBowlingGame do
  @moduledoc """
  Documentation for ElixirBowlingGame.
  """

  @doc """
  Hello world.

  ## Examples
      iex> game = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      iex> ElixirBowlingGame.calculate_score(game)
      0

  """

  def calculate_score(game) do
    calculate_score(game, 0)
  end

  def calculate_score([r_one, r_two | []], acc) do
    r_one + r_two + acc
  end

  def calculate_score([r_one, r_two, r_three | []], acc) when r_one == 10 do
    r_one + r_two + r_three + acc
  end

  def calculate_score([r_one, r_two, r_three | remaining], acc) when r_one + r_two == 10 do
    calculate_score([r_three | remaining], r_one + r_two + r_three + acc)
  end

  def calculate_score([r_one, r_two, r_three | remaining], acc) when r_one == 10 do
    calculate_score([r_two, r_three | remaining], r_one + r_two + r_three + acc)
  end

  def calculate_score([r_one, r_two | remaining], acc) do
    calculate_score(remaining, r_one + r_two + acc)
  end

  def calculate_score(_game, acc) do
    acc
  end
end
