defmodule ApiExample.SetPrimaryMovementRepository do
    use Towel


    def init(TargetExcerciseProvider) do
        %{provider: TargetExcerciseProvider}
    end

    def resolveOperation(operation) do
        unwrap(operation)
    end

    def addTargetExcercise(repository, userName, excerciseName, weight, reps) do
        resolveOperation(repository.provider.addTargetExcercise(userName, excerciseName, weight, reps))
    end

    def removeTargetExcercise(repository, userName, excerciseName) do
        resolveOperation(repository.provider.removeTargetExcercise(userName, excerciseName))
    end

end