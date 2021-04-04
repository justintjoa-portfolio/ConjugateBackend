defmodule ApiExample.CreateUserRepository do
    use Towel


    def resolveAddUser(attemptedAddition) do
        Towel.unwrap(attemptedAddition)
    end


    def addUser(userName) do
        resolveAddUser(UserProvider.addUser(userName))
    end

end