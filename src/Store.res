open Belt

type exercise = {
  id: int,
  title: string,
  bodyPart: string,
}

type set = {
  exercise: exercise,
  repetitions: int,
}

type state = {
  // workout: Map.String.t<set>,
  exercises: array<exercise>,
  nextId: int,
}

let dummyExercises: array<exercise> = [
  {id: 0, title: "Bench Press", bodyPart: "Chest"}, 
  {id: 1, title: "Military Press", bodyPart: "Deltoids"}, 
  {id: 2, title: "Squat", bodyPart: "Tricep Dip"},
  {id: 3, title: "Test", bodyPart: "Tricep Dip"}
  ]

let initialState: state = {
  exercises: dummyExercises,
  nextId: 5,
}

type action = 
| AddExercise({ title: string, bodyPart: string })
| RemoveExercise(int)
// | AddSet({ exercise: exercise, repetitions: int, })

// matey boi is using a Map not an array. so two things are not sync atm

let reducer = (state: state, action: action) => {
  switch action {
  | AddExercise({title, bodyPart}) => {
    let exercises = Array.concat(state.exercises, [{id: state.nextId, title, bodyPart}])
    {...state, exercises}
  }
  | RemoveExercise(id) => {
    let exercises = Js.Array2.filter(state.exercises, ex => ex.id !== id)
    {...state, exercises }
  }
}
}