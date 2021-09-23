open ReactNative
@react.component
let make = (~index: int, ~title: string, ~dispatch: Store.action => unit) => {
  // Js.log2("i", index)

  <Pressable onPress={_ => dispatch(Store.RemoveExercise(index))}>
    { ReactNative.Pressable.interactionState => <Text key={index->Belt.Int.toString} >{title->React.string}</Text> }
  </Pressable>
}