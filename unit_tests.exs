ExUnit.start

defmodule UnitTest do
  use ExUnit.Case
  import ApiExample.CreateUserRepository

  test "check basic repo" do
    ApiExample.CreateUserRepository.hello()
  end
end