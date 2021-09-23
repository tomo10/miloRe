open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "row": viewStyle(~flexDirection=#row, ~paddingHorizontal=24.->dp, ()),
  })
}

@react.component
let make = (~dispatch: Store.action => unit) => {
  let (exerciseInput, setExerciseInput) = React.useState(_ => "")
  let resetInput = _e => {
    setExerciseInput(_ => "")
  }

  let addExercise = () => {
    Js.log("addExercise()")
    resetInput()
    dispatch(AddExercise({title: exerciseInput, bodyPart: "Upper"}))
  }
<View style={styles["row"]}>
  <TextInput onChangeText={text => setExerciseInput(_ => text)} />
  <Pressable onPress={_ => addExercise()}>
    {ReactNative.Pressable.interactionState => <Text> {"+"->React.string} </Text>}
  </Pressable>
  </View>
}
