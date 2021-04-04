defmodule Excercise do
    quote do
        use Ecto.Model
        @primary_key {:id, :binary_id, autogenerate: true}
        @foreign_key


    end

    def init(weight, reps, excerciseName, RPE) do
        %{weight: weight,
        reps: reps,
        excerciseName: excerciseName,
        RPE: RPE}
    end

end