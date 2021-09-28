open ReactNative
open Stacks

let styles = {
  open Style
  StyleSheet.create({
    "container": viewStyle(~marginHorizontal=6.->dp, ~borderColor=Theme.color.orange_500, ~borderWidth=1., ~height=100.->dp, ~width=100.->dp, ()),
    "exerciseList": viewStyle(~alignItems=#center, ~justifyContent=#center, ()),
  })
}

@react.component
let make = (~index: int, ~exercise: Store.exercise, ~dispatch: Store.action => unit) => {

<Box key={index->Belt.Int.toString} style={styles["container"]} >
  <Pressable onPress={_ => dispatch(Store.RemoveExercise(exercise.id))}>
    { ReactNative.Pressable.interactionState => 
      <Text key={index->Belt.Int.toString} >{exercise.title->React.string}</Text> 
    }
  </Pressable>
  </Box>
}