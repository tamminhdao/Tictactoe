defmodule CLITest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "print empty board with indexes on the console" do
    empty_board = Board.empty_board() |> Board.format_board()
    assert capture_io(fn ->
      CLI.display_board(empty_board)
    end) == " 0  1  2  3  4  5  6  7  8 \n"
  end

  test "print marked board on the console" do
    marked_board = Board.empty_board()
      |> Board.insert_symbol(0, "X")
      |> Board.insert_symbol(1, "O")
      |> Board.format_board()
    assert capture_io(fn ->
      CLI.display_board(marked_board)
    end) == " X  O  2  3  4  5  6  7  8 \n"
  end

  test "print marked board on the console (2nd scenario)" do
    marked_board = Board.empty_board()
      |> Board.insert_symbol(3, "X")
      |> Board.insert_symbol(6, "O")
      |> Board.format_board()
    assert capture_io(fn ->
      CLI.display_board(marked_board)
    end) == " 0  1  2  X  4  5  O  7  8 \n"
  end
end
