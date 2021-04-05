ExUnit.start

defmodule UnitTest do
  use ExUnit.Case
  import ApiExample.CreateUserRepository


  test "check scale" do
    assert IO.puts ApiExample.ScaleDownRepository.calculateExcerciseDifficulty(
      {225, 5, 9}, 5, 235, 9
    ) == 10.3
  end
end