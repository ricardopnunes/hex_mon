defmodule HexMon do
  alias HexMon.{Game, Player}
  alias HexMon.Game.{Actions, Status}
  @nome_computador "Robotinik"
  def cria_player(nome, move_ale, move_int, move_heal) do
    Player.cria(nome, move_ale, move_int, move_heal)
  end

  def inicia_jogo(jogador) do
    @nome_computador
    |>cria_player(:soco, :chute, :cura)
    |>Game.inicio(jogador)

    Status.print_round_message()
  end

  def faz_move(move) do
    move
    |>Actions.fetch_move()
    |>do_move()
  end

  defp do_move({:error, move}), do: Status.print_msg_errada(move)

  defp do_move({:ok, move}) do
    case move do
    :move_heal -> "Realiza cura!"
    move -> Actions.ataque(move)
    end
  end

end
