defmodule Board do
  def empty_board(dimension \\ 3) do
    Enum.to_list 0..(dimension*dimension - 1)
    |> Enum.map(fn(_) -> nil end)
  end

  def insert_symbol(board, index, symbol) do
    List.replace_at(board, index, symbol)
  end

  # def empty_cells(board) do
  #   Enum.find_index(board, fn(x) -> x == nil end)
  # end
end