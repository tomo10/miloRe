open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "row": viewStyle(
      ~flexDirection=#row, 
      ~justifyContent=#spaceBetween, 
      ~paddingHorizontal=8.->dp, 
      ~borderColor=Theme.color.grey_200,
      ~borderWidth=1.,
      // ~backgroundColor="rgb(200, 100, 50)",
     ()),
    "input": viewStyle(
      // ~width=180.->dp, 
      ~flex=1.,
      // ~backgroundColor="rgb(100, 0, 50)",
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
    // dispatch(AddExercise({title: exerciseInput, bodyPart: "Upper"}))
  }

  <View style={styles["row"]}>
    <TextInput style={styles["input"]} onChangeText={text => setExerciseInput(_ => text)} />
    <Pressable onPress={_ => addExercise()}>
      {ReactNative.Pressable.interactionState => 
      <Expo.VectorIcons.Ionicons name="add" size={32} color="orange" />
    }
    </Pressable>
  </View>
}
