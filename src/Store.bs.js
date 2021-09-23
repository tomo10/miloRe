// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Array from "bs-platform/lib/es6/belt_Array.js";

var dummyExercises = [
  {
    title: "Bench Press",
    bodyPart: "Chest"
  },
  {
    title: "Military Press",
    bodyPart: "Deltoids"
  },
  {
    title: "Squat",
    bodyPart: "Tricep Dip"
  },
  {
    title: "Test",
    bodyPart: "Tricep Dip"
  }
];

var initialState = {
  exercises: dummyExercises
};

function reducer(state, action) {
  var exercises = Belt_Array.concat(state.exercises, [{
          title: action.title,
          bodyPart: action.bodyPart
        }]);
  return {
          exercises: exercises
        };
}

export {
  dummyExercises ,
  initialState ,
  reducer ,
  
}
/* No side effect */
