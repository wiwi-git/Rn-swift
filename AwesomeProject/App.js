/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React from 'react';
import {
  NativeModules,
  Button,
  View,
  Text,
} from 'react-native';

const { MyNativeModule } = NativeModules

_onPressButton = () => {
  //NativeModules.MyNativeModule.triggerRequest()
  let value = MyNativeModule.passValueFromReact("Hello World");
  
  NativeModules.MyNativeModule.getCount(value => {
    console.log("count is " + value)
  })
}
const App = () => {
  return (
    <View
      style={{
        flex: 1,
        justifyContent: "center",
        alignItems: "center"
      }}>
      <Text>Hello, world!</Text>
      <Button
        onPress={this._onPressButton}
        title="Click me!"
      />
    </View>
  )
}

export default App;