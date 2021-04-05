defmodule ApiExample.UserProvider do
    use Towel

    def addUser(userName) do
        ApiExample.Repo.insert(
            Ecto.Changeset.cast(%User{name: userName}, %{}, [:name])
        )
        

    end

    def findUser(userName) do

    end

end