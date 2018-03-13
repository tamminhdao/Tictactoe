defmodule HumanPlayerTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "cell_selection() returns the correct integer from player's input" do
    capture_io([input: "1\n"], fn ->
      assert HumanPlayer.cell_selection(:place_holder) == 1
    end)
  end

  describe "user enters some gebberish in addition to the cell input" do
    test "cell_selection() returns the correct integer" do
      capture_io([input: "1 8?^jk*$%}"], fn ->
        assert HumanPlayer.cell_selection(:place_holder) == 1
      end)
    end
  end

end
