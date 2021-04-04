defmodule ApiExample.UserController do
  use ApiExampleWeb, :controller
  use Towel

  def createUserController(conn, _params) do
    json conn, Towel.unwrap(CreateUserRepository.addUser(_params["name"]))
  end

  def scaleDownController(conn, _params) do
    json conn, Towel.unwrap(ScaleDownRepository.scaleExcercise(
      _params["excerciseName"],
      _params["weight"],
      _params["reps"],
      _params["targetExcercise"],
      _params["RPE"]
    ))
  end
  
  def setPrimaryController(conn, _params) do
    json conn, "Set Primary"
  end

  def removePrimaryController(conn, _params) do
    json conn, "remove primary"
  end


end
