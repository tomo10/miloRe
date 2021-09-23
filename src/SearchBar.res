open ReactNative
open Stacks

@react.component
let make = (~setSearchTerm) => {

  <Stack space=[3.] horizontal=[true] >
    <Expo.VectorIcons.Ionicons name="search" size={32} color="orange" />
    <TextInput placeholder="Search" onChangeText={text => {
      setSearchTerm(_ => text)
    }} 
    />
  </Stack>
}