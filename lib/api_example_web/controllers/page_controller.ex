defmodule ApiExample.UserController do
  use ApiExampleWeb, :controller

  def index(conn, _params) do
    users = []
    json conn, "Hello!"
  end
end
