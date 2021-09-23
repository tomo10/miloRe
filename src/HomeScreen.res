open ReactNative
open Belt
open Stacks
open Js_array2

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=62.->dp, ~paddingHorizontal=24.->dp, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
  })
}

let exercises: array<Store.exercise> = [
  {title: "Bench Press", bodyPart: "Chest"}, 
  {title: "Military Press", bodyPart: "Deltoids"}, 
  {title: "Squat", bodyPart: "Tricep Dip"}
  ]

@react.component
let make = () => {
  let (searchTerm, setSearchTerm) = React.useState(() => "")
  // let includesTerm = x => Js.String.includes(searchTerm, x) == true
  // let exTitles = exercises->Belt.Array.keep(ex => ex.title === searchTerm)
  // let includesTerm = x => Js.String.includes(searchTerm, x) == true
  // let filteredEx = exTitles->filter(includesTerm)

      <ScrollView
        contentInsetAdjustmentBehavior=#automatic >
      <Box padding=[8.] >
      <View style={styles["sectionContainer"]}>
        <Text style={styles["sectionTitle"]}>
          {"Exercises"->React.string}
        </Text>
      </View>
      <SearchBar setSearchTerm  />
      <Stack space=[2.]> 
        {exercises->Array.mapWithIndex((index, x) => <Text key={index->Belt.Int.toString} >{x.title->React.string}</Text> )->React.array}
      </Stack>
      </Box>

    </ScrollView>

}