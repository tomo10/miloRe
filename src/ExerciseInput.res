open ReactNative

@react.component
let make = () => {
  let (exerciseInput, setExerciseInput) = React.useState(_ => "")
  let resetInput = _e => {
    setExerciseInput(_ => "")
  }

  <TextInput onChangeText={text => setExerciseInput(_ => text)} />
}