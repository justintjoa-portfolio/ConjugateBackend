defmodule ApiExample.UserController do
  use ApiExampleWeb, :controller
  use Towel

  def createUserController(conn, _params) do
    json conn, Towel.unwrap(CreateUserRepository.addUser(_params["name"]))
  end

  def scaleDownController(conn, _params) do
    json conn, "Scale down"
  end
  
  def setPrimaryController(conn, _params) do
    json conn, "Set Primary"
  end


end
