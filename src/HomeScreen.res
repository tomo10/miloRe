open ReactNative
open Belt
open Stacks

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=32.->dp, ~paddingHorizontal=24.->dp, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
  })
}

let exercises = ["Bench Press", "Military Press", "Squat", "Tricep Dip"]

@react.component
let make = () => {

      <ScrollView
      contentInsetAdjustmentBehavior=#automatic >
      <Box padding=[4.] >
      <View style={styles["sectionContainer"]}>
        <Text style={styles["sectionTitle"]}>
          {"Exercises"->React.string}
        </Text>
      </View>
      <SearchBar />
      <View>
      {exercises->Array.map(x => <Text>{x->React.string}</Text>)->React.array}
      </View>
      </Box>

    </ScrollView>

}