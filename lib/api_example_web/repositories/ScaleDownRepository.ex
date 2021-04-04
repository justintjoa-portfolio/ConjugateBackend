defmodule ApiExample.ScaleDownRepository do
    use Towel


    
    def init(TargetExcerciseProvider, CandidateExcerciseProvider) do
        %{targetProvider: TargetExcerciseProvider,
        candidateExcerciseProvider: CandidateExcerciseProvider}
    end

    def resolveAddExcercise(result) do
        case result do
            {:ok, result} -> 
                fn (weight, reps, targetExcercise) ->
                    if (reps > targetExcercise.reps) do
                        targetExcercise.weight - ((reps - targetExcercise.reps)/2*10 + weight)
                    else
                        targetExcercise.weight - ((targetExcercise.reps - reps)/2*10 + weight)
                    end
                end
            {:error, reason}   -> "The target excercise doesn't exist!"
        end
    end

    def scaleExcercise(repository, excerciseName, weight, reps, targetExcercise) do
        resolveAddExcercise(
            repository.findTargetExcercise(targetExcercise)
        )
    end

end



