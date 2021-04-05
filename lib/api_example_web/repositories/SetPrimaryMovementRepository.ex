defmodule ApiExample.SetPrimaryMovementRepository do
    use Towel

    def resolveAddTargetExcercise(user) do
         if (user != nil) do
            UUID = Ecto.UUID.load(user)
            case UUID do
                {:ok, result} -> 

                    fn (excerciseName, weight, reps, RPE) ->

                        IO.puts("i'm here")

                        ApiExample.TargetExcerciseProvider.addExcercise(result."UUID", excerciseName, weight, reps, RPE)
                    
                    end
                {:error, reason}   -> 
                    fn (excerciseName, weight, reps, RPE) ->
                        IO.puts("i'm there")
                        reason
                    end
            end
        else
            "User does not exist!"
         end
         
    end

    def addTargetExcercise(userName, excerciseName, weight, reps, RPE) do
        resolveAddTargetExcercise(ApiExample.UserProvider.findUser(userName)).
        (excerciseName, weight, reps, RPE)
    end



end