defmodule ApiExample.TargetExcerciseProvider do
    use Towel
    import Ecto.Query

    def findExcercise(UUID, excerciseName) do
         query = from u in "excercises", where: u.name == ^excerciseName, where: u.userid == ^UUID, select: {
             u."weight",
             u."reps",
             u."RPE"
         }
        ApiExample.Repo.one(query)
    end

    def removeExcercise(UUID, excerciseName) do
        ApiExample.Repo.delete(
            Ecto.Changeset.cast(%Excercise{name: excerciseName, userid: UUID}, %{}, [:name])
        )
    end

    def addExcercise(userid, excerciseName, weight, reps, RPE) do
        ApiExample.Repo.insert(
            Ecto.Changeset.cast(%Excercise{userid: userid,
            name: excerciseName, reps: reps, RPE: RPE, weight: weight}, %{}, [:name])
        )
    end

end