open Belt

// type equipment = "Barbell" | "Body"
// bodyPart needs think. s
type exercise = {
  id: int,
  title: string,
  bodyPart: string,
  equipment: string,
}

type set = {
  exercise: exercise,
  repetitions: int,
}

// what should structure of workout look like?
type workout = {
  name: string,
  date: int,
  exercises: array<set>,
}

type state = {
  exercises: array<exercise>,
  nextId: int,
}

let allExercises: array<exercise> = [
  {id: 0, title: "Bench Press", bodyPart: "Chest", equipment: "Barbell"}, 
  {id: 1, title: "Press Ups", bodyPart: "Chest", equipment: "Body"}, 
  {id: 2, title: "Military Press", bodyPart: "Deltoids", equipment: "Barbell"}, 
  {id: 3, title: "Squat", bodyPart: "Legs", equipment: "Barbell"},
  {id: 4, title: "Deadlift", bodyPart: "Legs", equipment: "Barbell"},
  {id: 5, title: "Pull Ups", bodyPart: "Back", equipment: "Bar"},
  {id: 6, title: "Lunges", bodyPart: "Legs", equipment: "Dumbell"},
  {id: 7, title: "Chest Flys", bodyPart: "Chest", equipment: "Dumbell"},
  {id: 8, title: "Shoulder Press", bodyPart: "Deltoids", equipment: "Dumbell"},
  ]

let initialState: state = {
  exercises: [],
  nextId: 5,
}

type action = 
| AddExercise(exercise)
| RemoveExercise(int)
// | AddSet({ exercise: exercise, repetitions: int, })


let reducer = (state: state, action: action) => {
  switch action {
  | AddExercise(exercise) => {
    // let equipment = "HardCoded"
    let exercises = Array.concat(state.exercises, [exercise])
    {...state, exercises}
  }
  | RemoveExercise(id) => {
    let exercises = Js.Array2.filter(state.exercises, ex => ex.id !== id)
    {...state, exercises }
  }
}
}