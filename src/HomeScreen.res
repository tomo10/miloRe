open ReactNative
open Belt
open Stacks
// open Js_array2

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=62.->dp, ~paddingHorizontal=24.->dp, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
  })
}


@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(Store.reducer, Store.initialState)
  // let (searchTerm, setSearchTerm) = React.useState(() => "")
  // let exTitles = exercises->Belt.Array.keep(ex => ex.title === searchTerm)

      <ScrollView
        contentInsetAdjustmentBehavior=#automatic >
      <Box padding=[8.] >
      <View style={styles["sectionContainer"]}>
        <Text style={styles["sectionTitle"]}>
          {"Exercises"->React.string}
        </Text>
      </View>
      // <SearchBar setSearchTerm  />
      <ExerciseInput dispatch />
      <Stack space=[4.]> 
        {state.exercises->Array.mapWithIndex((index, x) => <ExerciseRow dispatch title={x.title} index />  )->React.array}
      </Stack>
      </Box>

    </ScrollView>

}