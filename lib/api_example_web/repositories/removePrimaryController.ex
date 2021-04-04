 defmodule ApiExample.RemovePrimaryMovementRepository do
    use Towel

    def resolveRemoveTargetExcercise(value) do
         case user do
            {:ok, result} -> 

                fn (excerciseName) ->
                    ok(
                        TargetExcerciseProvider.addExcercise(value.UUID, excerciseName)
                    )
                end
            {:error, reason}   -> 
                fn (excerciseName) ->
                    error(reason)
                end
        end
    end


     def removeTargetExcercise(userName, excerciseName) do
        resolveRemoveTargetExcercise(
            UserProvider.findUser(userName)
        )
    end



end
 
