open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "row": viewStyle(
      ~flexDirection=#row, 
      ~justifyContent=#spaceBetween, 
      ~paddingHorizontal=24.->dp, 
      ~width=180.->dp, 
      ~backgroundColor="rgb(200, 100, 50)",
     ()),
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
