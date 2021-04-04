defmodule ApiExample.SetPrimaryMovementRepository do
    use Towel


    def init(TargetExcerciseProvider) do
        %{provider: TargetExcerciseProvider}
    end

    def resolveOperation(operation) do
        Towel.unwrap(operation)
    end

    def addTargetExcercise(repository, userName, excerciseName, weight, reps, RPE) do
        resolveOperation(repository.provider.addTargetExcercise(userName, excerciseName, weight, reps, RPE))
    end

    def removeTargetExcercise(repository, userName, excerciseName, RPE) do
        resolveOperation(repository.provider.removeTargetExcercise(userName, excerciseName))
    end

end