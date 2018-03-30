defmodule CLI do

  def display_board(board) do
    board
    |> Board.format_board()
    |> IO.puts()
  end

end
