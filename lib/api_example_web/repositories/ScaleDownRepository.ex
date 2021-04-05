defmodule ApiExample.ScaleDownRepository do
    use Towel

    def calculateExcerciseDifficulty(targetExcercise, reps, weight, rpeValue) do
        if (targetExcercise != nil) do
                IO.inspect targetExcercise
                (1 + ((targetExcercise |> elem(2)) - rpeValue)*0.05 + 0.03) *
                (((targetExcercise |> elem(0)) - ((reps - ((targetExcercise |> elem(1)))/2*10 + weight))))
        else 
            "Target excercise does not exist!"
        end
    end


    def resolveScaleExcercise(user) do
        if (user != nil) do
            userID = Ecto.UUID.load(user)
            case userID do
                {:ok, result} -> 
                    fn (weight, reps, targetExcerciseName, rpeValue) ->
                        targetExcercise = ApiExample.TargetExcerciseProvider.findExcercise(result, targetExcerciseName)
                        calculateExcerciseDifficulty(targetExcercise, reps, weight, rpeValue)
                    end
                {:error, reason}   -> 
                    fn (weight, reps, targetExcerciseName, rpeValue) ->
                        reason
                    
                    end
            end
        else
            fn (weight, reps, targetExcercise, rpeValue) ->
                       "User does not exist!"
                    
                end
        end
    end

    def scaleExcercise(userName, targetExcerciseName, weight, reps, rpeValue) do
        resolveScaleExcercise(
            ApiExample.UserProvider.findUser(userName)).(weight, reps, targetExcerciseName, rpeValue)
        
        
    end

end



