// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "bs-platform/lib/es6/curry.js";
import * as Theme from "./Theme.bs.js";
import * as React from "react";
import * as ReactNative from "react-native";
import * as Stacks_component_Box from "@mobily/stacks/src/Stacks_component_Box.bs.js";

var styles = ReactNative.StyleSheet.create({
      container: {
        backgroundColor: Theme.color.blue_100,
        height: 50
      },
      exerciseList: {
        alignItems: "center",
        justifyContent: "center"
      }
    });

function ExerciseRow(Props) {
  var index = Props.index;
  var title = Props.title;
  var dispatch = Props.dispatch;
  return React.createElement(Stacks_component_Box.make, {
              style: styles.container,
              children: React.createElement(ReactNative.Pressable, {
                    children: (function (interactionState) {
                        return React.createElement(ReactNative.Text, {
                                    children: title,
                                    key: String(index)
                                  });
                      }),
                    onPress: (function (param) {
                        return Curry._1(dispatch, {
                                    TAG: /* RemoveExercise */1,
                                    _0: index
                                  });
                      })
                  })
            });
}

var make = ExerciseRow;

export {
  styles ,
  make ,
  
}
/* styles Not a pure module */
