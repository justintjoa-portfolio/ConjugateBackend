defmodule ApiExample.ScaleDownRepository do
    use Towel


    
    def init(TargetExcerciseProvider, CandidateExcerciseProvider) do
        %{targetProvider: TargetExcerciseProviderr}
    end

    def resolveAddExcercise(result) do
        case result do
            {:ok, result} -> 
                fn (weight, reps, targetExcercise, RPE) ->
                    ok(
                        (1 + (targetExcercise.RPE - RPE)*0.05) *
                    (targetExcercise.weight - ((reps - targetExcercise.reps)/2*10 + weight))
                    )
                end
            {:error, reason}   -> 
                fn (weight, reps, targetExcercise, RPE) ->
                    error(reason)
                end
        end
    end

    def scaleExcercise(repository, excerciseName, weight, reps, targetExcercise, RPE) do
        resolveAddExcercise(
            repository.findTargetExcercise(targetExcercise)(weight, reps, targetExcercise, RPE)
        )
    end

end



