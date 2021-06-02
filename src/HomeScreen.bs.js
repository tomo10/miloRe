// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as SearchBar from "./SearchBar.bs.js";
import * as Belt_Array from "bs-platform/lib/es6/belt_Array.js";
import * as ReactNative from "react-native";
import * as Stacks_component_Box from "@mobily/stacks/src/Stacks_component_Box.bs.js";

var styles = ReactNative.StyleSheet.create({
      sectionContainer: {
        marginTop: 32,
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
  "Bench Press",
  "Military Press",
  "Squat",
  "Tricep Dip"
];

function HomeScreen(Props) {
  return React.createElement(ReactNative.ScrollView, {
              contentInsetAdjustmentBehavior: "automatic",
              children: React.createElement(Stacks_component_Box.make, {
                    padding: [4],
                    children: null
                  }, React.createElement(ReactNative.View, {
                        style: styles.sectionContainer,
                        children: React.createElement(ReactNative.Text, {
                              children: "Exercises",
                              style: styles.sectionTitle
                            })
                      }), React.createElement(SearchBar.make, {}), React.createElement(ReactNative.View, {
                        children: Belt_Array.map(exercises, (function (x) {
                                return React.createElement(ReactNative.Text, {
                                            children: x
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
