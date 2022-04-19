defmodule HexMon.Game.Actions do
  alias HexMon.Game
  alias HexMon.Game.Actions.Ataque
  def fetch_move(move)do

    Game.jogador()
    |>Map.get(:moves)
    |>find_move(move)
  end

  defp find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {key, value} ->
      if value == move, do: {:ok, key}
    end)
  end
  def ataque(move) do
    case Game.turno() do
      :jogador -> Ataque.attack_opponent({:computador, move})
      :computador -> Ataque.attack_opponent({:jogador, move})
    end
  end
end
