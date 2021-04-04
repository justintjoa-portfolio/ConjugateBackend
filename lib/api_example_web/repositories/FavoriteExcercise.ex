defmodule ApiExample.FavoriteExcericseRepository do
    use Towel


    def init(RelevantExcerciseProvider) do
        %{provider: RelevantExcerciseProvider}
    end

    def resolveAddExcercise(attemptedAddition) do
        unwrap(attemptedAddition)
    end


    def addExcercise(repository, excerciseName) do
        resolveAddUser(repository.provider.addExcercise(excerciseName))
    end

end