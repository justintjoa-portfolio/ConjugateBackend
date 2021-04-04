defmodule ApiExample.ScaleDownRepository do
    use Towel


    def resolveAddExcercise(result) do
        case result do
            {:ok, result} -> 
                fn (weight, reps, targetExcercise, rpeValue) ->
                        (1 + (targetExcercise."RPE" - RPE)*0.05) *
                    (targetExcercise.weight - ((reps - targetExcercise.reps)/2*10 + weight))
                    
                end
            {:error, reason}   -> 
                fn (weight, reps, targetExcercise, RPE) ->
                    reason
                end
        end
    end

    def scaleExcercise(excerciseName, weight, reps, targetExcercise, RPE) do
        resolveAddExcercise(
            TargetExcerciseProvider.findExcercise(targetExcercise)).(weight, reps, targetExcercise, RPE)
        
    end

end



