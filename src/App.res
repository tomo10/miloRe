open ReactNative
open Stacks


let useIsDarkMode = () => {
  Appearance.useColorScheme()
  ->Js.Null.toOption
  ->Belt.Option.map(scheme => scheme === #dark)
  ->Belt.Option.getWithDefault(false)
}


@react.component
let app = () => {
    
  <StacksProvider spacing=4.>
    <HomeScreen />
  </StacksProvider>
}
