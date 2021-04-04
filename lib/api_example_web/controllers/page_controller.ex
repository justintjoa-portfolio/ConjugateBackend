defmodule ApiExample.UserController do
  use ApiExampleWeb, :controller

  def createUserController(conn, _params) do
    users = []
    json conn, "Hello!"
  end

  def scaleDownController(conn, _params) do
    json conn, "Scale down"
  end
  
  def setPrimaryController(conn, _params) do
    json conn, "Set Primary"
  end


end
