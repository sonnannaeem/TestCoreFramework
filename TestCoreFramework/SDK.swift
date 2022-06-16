//
//  SDK.swift
//  TestCoreFramework
//
//  Created by Sonnan Naeem on 6/15/22.
//

import Foundation
import GoogleSignIn

public struct SDK {
    
    public static func sayHello() {
        print("Hello from TestCoreFramework>SDK>sayHello()")
        let currentTime = GoogleSignIn.Date.now.ISO8601Format()
        print("TestCoreFramework>SDK>sayHello() - GoogleSignIn: " + currentTime)
    }
}