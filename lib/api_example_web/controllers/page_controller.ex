defmodule ApiExample.UserController do
  use ApiExampleWeb, :controller
  use Towel

  def createUserController(conn, _params) do
    #json conn, ApiExample.CreateUserRepository.addUser(_params["name"])
    IO.puts ApiExample.UserProvider.findUser(_params["name"])
    json conn, "complete"
  end

  def scaleDownController(conn, _params) do
    json conn, ApiExample.ScaleDownRepository.scaleExcercise(
      _params["excerciseName"],
      _params["weight"],
      _params["reps"],
      _params["targetExcercise"],
      _params["RPE"]
    )
  end
  
  def setPrimaryController(conn, _params) do
    json conn, "Set Primary"
  end

  def removePrimaryController(conn, _params) do
    json conn, "remove primary"
  end


end
