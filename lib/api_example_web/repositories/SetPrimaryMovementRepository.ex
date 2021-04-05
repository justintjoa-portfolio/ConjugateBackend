defmodule ApiExample.SetPrimaryMovementRepository do
    use Towel

    def resolveAddTargetExcercise(user) do
         if (user != nil) do
            IO.puts "START"
            userID = Ecto.UUID.load(user)
            IO.puts "END"
            case userID do
                {:ok, result} -> 
                    fn (excerciseName, weight, reps, rpeValue) ->

                 

                        ApiExample.TargetExcerciseProvider.addExcercise(result, excerciseName, weight, reps, rpeValue)
                    
                    end
                {:error, reason}   -> 
                    fn (excerciseName, weight, reps, rpeValue) ->
                        reason
                    end
            end
        else
            "User does not exist!"
         end
         
    end

    def addTargetExcercise(userName, excerciseName, weight, reps, rpeValue) do
        resolveAddTargetExcercise(ApiExample.UserProvider.findUser(userName)).
        (excerciseName, weight, reps, rpeValue)
    end



end