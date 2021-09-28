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
      ~flex=1.,
     ()),
  })
}

@react.component
let make = (~dispatch: Store.action => unit) => {
  let (exerciseInput, setExerciseInput) = React.useState(_ => "")
  let resetInput = _e => {
    setExerciseInput(_ => "")
  }
  // have buttons / toggles to select body part.

  let addExercise = () => {
    Js.log("addExercise()")
    resetInput()
    let userExercise: Store.exercise = {
      id: 123, 
      title: exerciseInput, 
      bodyPart: "HardBody", 
      equipment: "ToggleSelect" 
    }
    dispatch(AddExercise(userExercise))
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
