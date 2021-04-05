defmodule ApiExample.CreateUserRepository do




    def addUser(userName) do
        try do
            ApiExample.UserProvider.addUser(userName)
            "User successfully added."
        rescue
            Ecto.ConstraintError -> "User already exists."

        end
    end

end