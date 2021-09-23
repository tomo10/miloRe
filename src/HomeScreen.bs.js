// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as SearchBar from "./SearchBar.bs.js";
import * as Belt_Array from "bs-platform/lib/es6/belt_Array.js";
import * as ReactNative from "react-native";
import * as Stacks_component_Box from "@mobily/stacks/src/Stacks_component_Box.bs.js";
import * as Stacks_component_Stack from "@mobily/stacks/src/Stacks_component_Stack.bs.js";

var styles = ReactNative.StyleSheet.create({
      sectionContainer: {
        marginTop: 62,
        paddingHorizontal: 24
      },
      sectionTitle: {
        fontSize: 24,
        fontWeight: "600"
      },
      sectionDescription: {
        fontSize: 18,
        fontWeight: "400",
        marginTop: 8
      },
      highlight: {
        fontWeight: "700"
      }
    });

var exercises = [
  {
    title: "Bench Press",
    bodyPart: "Chest"
  },
  {
    title: "Military Press",
    bodyPart: "Deltoids"
  },
  {
    title: "Squat",
    bodyPart: "Tricep Dip"
  }
];

function HomeScreen(Props) {
  var match = React.useState(function () {
        return "";
      });
  return React.createElement(ReactNative.ScrollView, {
              contentInsetAdjustmentBehavior: "automatic",
              children: React.createElement(Stacks_component_Box.make, {
                    padding: [8],
                    children: null
                  }, React.createElement(ReactNative.View, {
                        style: styles.sectionContainer,
                        children: React.createElement(ReactNative.Text, {
                              children: "Exercises",
                              style: styles.sectionTitle
                            })
                      }), React.createElement(SearchBar.make, {
                        setSearchTerm: match[1]
                      }), React.createElement(ReactNative.TextInput, {}), React.createElement(Stacks_component_Stack.make, {
                        space: [4],
                        children: Belt_Array.mapWithIndex(exercises, (function (index, x) {
                                return React.createElement(ReactNative.Text, {
                                            children: x.title,
                                            key: String(index)
                                          });
                              }))
                      }))
            });
}

var make = HomeScreen;

export {
  styles ,
  exercises ,
  make ,
  
}
/* styles Not a pure module */
