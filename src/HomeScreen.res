open ReactNative
open Belt
open Stacks

let styles = {
  open Style
  StyleSheet.create({
    "container": viewStyle(~marginTop=62.->dp, ~paddingHorizontal=24.->dp, ~backgroundColor=Theme.color.grey_100, ()),
    "sectionContainer": viewStyle(~paddingHorizontal=12.->dp, ~alignItems=#center, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
    "exerciseList": viewStyle(~alignItems=#center, ~justifyContent=#center, ()),
  })
}


@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(Store.reducer, Store.initialState)
  let (searchTerm, setSearchTerm) = React.useState(() => "")
  let includesSearch = (x: Store.exercise) => Js.String.includes(searchTerm->Js.String2.toLowerCase, x.title->Js.String2.toLowerCase)
  let filteredExercises = {
    open Js.Array2
    Store.allExercises->filter(includesSearch)
  } 

      <Stack space=[4.] padding=[8.] style={styles["container"]} >
        <View style={styles["sectionContainer"]}>
            <Text style={styles["sectionTitle"]}>
              {"Creating workout"->React.string}
            </Text>
          </View>
        <SearchBar setSearchTerm  />
        <ScrollView horizontal={true}>
          {state.exercises->Array.mapWithIndex((index, exercise) => <WorkoutTile dispatch exercise={exercise} index />)->React.array}
        </ScrollView>
        <ExerciseInput dispatch />
        <ScrollView >
        <Stack style={styles["exerciseList"]} space=[6.]> 
          {(Js.String2.length(searchTerm) > 0 
          ? filteredExercises 
          : Store.allExercises)->Array.mapWithIndex((index, x) => <ExerciseRow dispatch exercise={x} index />  )->React.array}
        </Stack>
        </ScrollView>
      </Stack>

}