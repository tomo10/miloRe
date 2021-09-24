open ReactNative
open Stacks

let styles = {
  open Style
  StyleSheet.create({
    "container": viewStyle(~backgroundColor=Theme.color.orange_500, ~height=50.->dp, ()),
    "exerciseList": viewStyle(~alignItems=#center, ~justifyContent=#center, ()),
  })
}

@react.component
let make = (~index: int, ~title: string, ~dispatch: Store.action => unit) => {

<Box style={styles["container"]} >
  <Pressable onPress={_ => dispatch(Store.RemoveExercise(index))}>
    { ReactNative.Pressable.interactionState => 
      <Text key={index->Belt.Int.toString} >{title->React.string}</Text> 
    }
  </Pressable>
  </Box>
}