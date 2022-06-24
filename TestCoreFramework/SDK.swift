//
//  SDK.swift
//  TestCoreFramework
//
//  Created by Sonnan Naeem on 6/15/22.
//

import Foundation
import GoogleSignIn
//import ExtendedLibrary

public struct SDK {
    
    public static func sayHello() {
        print("Hello from TestCoreFramework>SDK>sayHello()")
    }
    
    public static func GoogleTest() -> String {
        print("TestCoreFramework>SDK>GoogleTest()")
        let currentTime = GoogleSignIn.Date.now.ISO8601Format()
        print("TestCoreFramework>SDK>sayHello() - GoogleSignIn: " + currentTime)
        return currentTime
    }
    
//    public static func ExtendedLibraryTest(text: String) {
//        ExtendedLibrary.extensionTest(text: text)
//    }
}
