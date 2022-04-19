defmodule HexMon.Game.Status do
  alias HexMon.Game

  def print_round_message do
    IO.puts("\n====== O jogo iniciou! ======\n")
    IO.inspect(Game.info)
    IO.puts("-------------------------------")
  end

  def print_msg_errada(move)do
    IO.puts("\n====== Movimento Inválido: #{move} ======\n")
  end

end
