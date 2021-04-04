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

                fn (excerciseName, weight, reps, RPE) ->
                    ok(
                        TargetExcerciseProvider.addExcercise(result.UUID, excerciseName, weight, reps, RPE)
                    )
                end
            {:error, reason}   -> 
                fn (excerciseName, weight, reps, RPE) ->
                    error(reason)
                end
        end
    end

    def addTargetExcercise(userName, excerciseName, weight, reps, RPE) do
        resolveAddTargetExcercise(UserProvider.findUser(userName)).
        (excerciseName, weight, reps, RPE)
    end



end