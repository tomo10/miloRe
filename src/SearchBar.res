open ReactNative
open Stacks

@react.component
let make = () => {

  <Stack space=[2.] horizontal=[true] >
    <Expo.VectorIcons.Ionicons name="search" size={32} color="orange" />
    <Text>{"Search"->React.string}</Text>
  </Stack>
}