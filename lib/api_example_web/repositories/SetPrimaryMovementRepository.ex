defmodule ApiExample.SetPrimaryMovementRepository do
    use Towel

    def resolveAddTargetExcercise(user) do
         case user do
            {:ok, result} -> 

                fn (excerciseName, weight, reps, RPE) ->

                    ApiExample.TargetExcerciseProvider.addExcercise(result."UUID", excerciseName, weight, reps, RPE)
                    
                end
            {:error, reason}   -> 
                fn (excerciseName, weight, reps, RPE) ->
                    reason
                end
        end
    end

    def addTargetExcercise(userName, excerciseName, weight, reps, RPE) do
        resolveAddTargetExcercise(ApiExample.UserProvider.findUser(userName)).
        (excerciseName, weight, reps, RPE)
    end



end