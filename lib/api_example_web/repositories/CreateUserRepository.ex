defmodule ApiExample.CreateUserRepository do
    use Towel


    def init(CreateUserProvider) do
        %{provider: CreateUserProvider}
    end

    def resolveAddUser(attemptedAddition) do
        unwrap(attemptedAddition)
    end


    def addUser(repository, userName) do
        resolveAddUser(repository.provider.addUser(userName))
    end

end