defmodule ApiExample.UserProvider do
    use Towel
    import Ecto.Query
    import Ecto



    def addUser(userName) do
        ApiExample.Repo.insert(
            Ecto.Changeset.cast(%User{name: userName}, %{}, [:name])
        )
        

    end

    def findUser(userName) do

        query = from u in "users", where: u.name == ^userName, select: u.id
        value = ApiExample.Repo.one(query)
    end

end