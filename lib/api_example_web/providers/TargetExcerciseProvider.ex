defmodule ApiExample.TargetExcerciseProvider do
    use Towel
    import Ecto.Query

    def findExcercise(userID, excerciseName) do
         query = from u in "excercises", where: u.name == ^excerciseName, where: u.userid == ^userID, select: {
             u."weight",
             u."reps",
             u."RPE"
         }
        ApiExample.Repo.one(query)
    end

    def removeExcercise(userID, excerciseName) do
        from(x in "excercises", where: x.userid == ^userID, where: x.name == ^excerciseName) |> ApiExample.Repo.delete_all
    end

    def addExcercise(userid, excerciseName, weight, reps, rpeValue) do
        ApiExample.Repo.insert(
            Ecto.Changeset.cast(%Excercise{userid: userid,
            name: excerciseName, reps: reps, RPE: rpeValue, weight: weight}, %{}, [:name])
        )
    end

end