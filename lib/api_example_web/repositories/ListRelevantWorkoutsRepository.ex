defmodule ApiExample.ListRelevantExcercisesRepository do
    use Towel


    
    def init(TargetExcerciseProvider, CandidateExcerciseProvider) do
        %{relevantExcercisesProvider: RelevantExcerciseProvider}
    end

    def getRelevantExcercises(repository, username) do
        repository.relevantExcercisesProvider.getAll(username)

    end

end


