defmodule ApiExample.FavoriteExcericseRepository do
    use Towel


    def init(RelevantExcerciseProvider) do
        %{provider: RelevantExcerciseProvider}
    end

    def resolveAddExcercise(attemptedAddition) do
        Towel.unwrap(attemptedAddition)
    end


    def addExcercise(repository, excerciseName) do
        resolveAddExcercise(repository.provider.addExcercise(excerciseName))
    end

end