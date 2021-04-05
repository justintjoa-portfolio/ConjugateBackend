defmodule ApiExample.UserController do
  use ApiExampleWeb, :controller
  use Towel

  def createUserController(conn, _params) do
    json conn, ApiExample.CreateUserRepository.addUser(_params["name"])
  end

  def scaleDownController(conn, _params) do
    json conn, ApiExample.ScaleDownRepository.scaleExcercise(
      _params["userName"], 
      _params["excerciseName"],
      _params["weight"],
      _params["reps"],
      _params["RPE"]
    )
  end
  
  def setPrimaryController(conn, _params) do
    json conn, ApiExample.SetPrimaryMovementRepository.addTargetExcercise(
      _params["userName"], 
      _params["excerciseName"],
      _params["weight"],
      _params["reps"],
      _params["RPE"]
    )
  end

  def removePrimaryController(conn, _params) do
    json conn, "remove primary"
  end


end
