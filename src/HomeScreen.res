open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=32.->dp, ~paddingHorizontal=24.->dp, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
  })
}

@react.component
let make = () => {

  <SafeAreaView>
      <ScrollView
      contentInsetAdjustmentBehavior=#automatic >

      <View style={styles["sectionContainer"]}>
        <Text style={styles["sectionTitle"]}>
          {"This is home"->React.string}
        </Text>
      </View>
    </ScrollView>
  </SafeAreaView>

}