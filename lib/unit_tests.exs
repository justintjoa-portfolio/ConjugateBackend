ExUnit.start

defmodule UnitTest do
  #use ApiExample.CreateUserRepository
  use ExUnit.Case

  test "check basic repo" do
    IO.puts "Hello"
  end
end