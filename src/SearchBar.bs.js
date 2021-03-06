// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "bs-platform/lib/es6/curry.js";
import * as React from "react";
import * as ReactNative from "react-native";
import * as VectorIcons from "@expo/vector-icons";
import * as Stacks_component_Stack from "@mobily/stacks/src/Stacks_component_Stack.bs.js";

function SearchBar(Props) {
  var setSearchTerm = Props.setSearchTerm;
  return React.createElement(Stacks_component_Stack.make, {
              space: [3],
              horizontal: [true],
              children: null
            }, React.createElement(VectorIcons.Ionicons, {
                  name: "search",
                  size: 32,
                  color: "orange"
                }), React.createElement(ReactNative.TextInput, {
                  onChangeText: (function (text) {
                      return Curry._1(setSearchTerm, (function (param) {
                                    return text;
                                  }));
                    }),
                  placeholder: "Search"
                }));
}

var make = SearchBar;

export {
  make ,
  
}
/* react Not a pure module */
