defmodule Excercise do
    use Towel


    def init(weight, reps, excerciseName, RPE) do
        %{weight: weight,
        reps: reps,
        excerciseName: excerciseName,
        RPE: RPE}


end