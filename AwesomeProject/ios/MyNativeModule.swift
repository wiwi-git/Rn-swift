//
//  MyNativeModule.swift
//  AwesomeProject
//
//  Created by 위대연 on 2020/12/30.
//

import Foundation

@objc(MyNativeModule)
class MyNativeModule: NSObject {
  @objc var count = 1;
  
  @objc func passValueFromReact(_ value : String) -> Int {
    debugPrint(" Print Here \(value)")
    return 1;
   }
  
  @objc func getCount(_ callback: RCTResponseSenderBlock) {
      callback([count])
    }
  @objc static func requiresMainQueueSetup() -> Bool {
      return true
  }
}
