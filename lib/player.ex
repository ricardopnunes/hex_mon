defmodule HexMon.Player do
  @required_keys [:moves, :nome, :vida]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def cria(nome, move_avg, move_rnd, move_heal) do
    %HexMon.Player{
      vida: @max_life,
      moves: %{
        move_avg: move_avg,
        move_heal: move_heal,
        move_rnd: move_rnd
      },
      nome: nome
    }

  end
end
