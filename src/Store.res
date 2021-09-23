open Belt

type exercise = {
  title: string,
  bodyPart: string,
}

type set = {
  exercise: exercise,
  repetitions: int,
}

type state = {
  workout: Map.String.t<set>,
}

let initialState: state = {
  workout: Map.String.empty,
}

type action = 
| AddSet({exercise: exercise, repetitions: int, })