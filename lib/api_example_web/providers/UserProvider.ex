defmodule ApiExample.UserProvider do
    use Towel

    def addUser(userName) do
        Ecto.Repo.insert(
            Ecto.Changeset.cast(%User{name: "Jason"}, %{}, [:name])
        )
        

    end

    def findUser(userName) do

    end

end