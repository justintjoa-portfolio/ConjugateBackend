defmodule ApiExample.SetPrimaryMovementRepository do
    use Towel


    def init(TargetExcerciseProvider) do
        %{
            
            userProvider: UserProvider,
            targetProvider: TargetExcerciseProvider}
    end

    def resolveAddTargetExcercise(user) do
         case user do
            {:ok, result} -> 

                fn (targetProvider, excerciseName, weight, reps, RPE) ->
                    ok(
                        targetProvider.addExcercise(excerciseName, weight, reps, RPE)
                    )
                end
            {:error, reason}   -> 
                fn (targetProvider, excerciseName, weight, reps, RPE) ->
                    error(reason)
                end
        end
    end

    def addTargetExcercise(repository, userName, excerciseName, weight, reps, RPE) do
        resolveAddTargetExcercise(repository.userProvider.findUser(userName)).
        (repository.targetProvider, excerciseName, weight, reps, RPE)
    end

    def resolveRemoveTargetExcercise(result) do
        Towel.unwrap(result)
    end

    def removeTargetExcercise(repository, userName, excerciseName) do
        resolveRemoveTargetExcercise(repository.provider.removeTargetExcercise(userName, excerciseName))
    end

end