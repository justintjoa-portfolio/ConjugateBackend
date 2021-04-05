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
        value = Ecto.UUID.load(ApiExample.Repo.one(query))
        case value do
            {:ok, result} -> 
                    result
            {:error, reason}   -> 
                reason

        end
    end

end