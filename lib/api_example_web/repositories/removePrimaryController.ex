 defmodule ApiExample.RemovePrimaryMovementRepository do
    use Towel

    def resolveRemoveTargetExcercise(user) do
         case user do
            {:ok, result} -> 

                fn (excerciseName) ->
                    ApiExample.TargetExcerciseProvider.addExcercise(user."UUID", excerciseName)
                    
                end
            {:error, reason}   -> 
                fn (excerciseName) ->
                    reason
                end
        end
    end


     def removeTargetExcercise(userName, excerciseName) do
        resolveRemoveTargetExcercise(
            ApiExample.UserProvider.findUser(userName)
        )
    end



end
 
