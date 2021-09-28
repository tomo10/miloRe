open ReactNative
open Stacks

let styles = {
  open Style
  StyleSheet.create({
    "container": viewStyle(~marginVertical=6.->dp, ~backgroundColor=Theme.color.orange_500, ~height=50.->dp, ()),
    "exerciseList": viewStyle(~alignItems=#center, ~justifyContent=#center, ()),
  })
}

@react.component
let make = (~index: int, ~exercise: Store.exercise, ~dispatch: Store.action => unit) => {

  <Pressable onPress={_ => dispatch(Store.AddExercise(exercise))}>
    { ReactNative.Pressable.interactionState => 
    <Box key={index->Belt.Int.toString} style={styles["container"]} >
      <Text key={index->Belt.Int.toString} >{exercise.title->React.string}</Text> 
    </Box>
    }
  </Pressable>
}