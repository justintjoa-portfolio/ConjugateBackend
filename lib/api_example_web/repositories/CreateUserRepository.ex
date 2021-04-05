defmodule ApiExample.CreateUserRepository do
    


    def resolveAddUser(attemptedAddition) do
        case attemptedAddition do
            {:ok, result} -> 
                 "User successfully added."
            {:error, reason}   -> 
                "User already exists."

        end
    end


    def addUser(userName) do
        resolveAddUser(ApiExample.UserProvider.addUser(userName))
    end

end