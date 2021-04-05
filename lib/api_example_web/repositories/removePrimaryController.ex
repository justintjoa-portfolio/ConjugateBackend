 defmodule ApiExample.RemovePrimaryMovementRepository do
    use Towel

    def resolveRemoveTargetExcercise(user) do
         if (user != nil) do
            userID = Ecto.UUID.load(user)
            case userID do
                {:ok, result} -> 
                    fn (excerciseName) ->
                        ApiExample.TargetExcerciseProvider.removeExcercise(result, excerciseName)
                        "Excercise is removed!"
                    end
                {:error, reason}   -> 
                    fn (excerciseName) ->
                        reason
                    end
            end
        else
            fn (excerciseName) ->
                    "User does not exist!"
                end
         end
    end


     def removeTargetExcercise(userName, excerciseName) do
        resolveRemoveTargetExcercise(
            ApiExample.UserProvider.findUser(userName)
        ).(excerciseName)
    end



end
 
