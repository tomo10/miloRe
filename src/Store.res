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
  // workout: Map.String.t<set>,
  exercises: array<exercise>,
}

let dummyExercises: array<exercise> = [
  {title: "Bench Press", bodyPart: "Chest"}, 
  {title: "Military Press", bodyPart: "Deltoids"}, 
  {title: "Squat", bodyPart: "Tricep Dip"},
  {title: "Test", bodyPart: "Tricep Dip"}
  ]

let initialState: state = {
  exercises: dummyExercises,
}

type action = 
| AddExercise({ title: string, bodyPart: string })
// | AddSet({ exercise: exercise, repetitions: int, })

// matey boi is using a Map not an array. so two things are not sync atm

let reducer = (state: state, action: action) => {
  switch action {
  | AddExercise({title, bodyPart}) => {
    let exercises = Array.concat(state.exercises, [{title, bodyPart}])
    {...state, exercises}
  }
}
}