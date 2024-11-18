//
//  SwiftUIThinkingAdvancedLearningApp.swift
//  SwiftUIThinkingAdvancedLearning
//
//  Created by Kritchanat on 18/11/2567 BE.
//

import SwiftUI

@main
struct SwiftUIThinkingAdvancedLearningApp: App {
    
    let currentUserIsSignedIn: Bool
        
        init() {
            //let userIsSignedIn: Bool = CommandLine.arguments.contains("-UITest_startSignedIn") ? true : false
            let userIsSignedIn: Bool = ProcessInfo.processInfo.arguments.contains("-UITest_startSignedIn") ? true : false
            //let value = ProcessInfo.processInfo.environment["-UITest_startSignedIn2"]
            //let userIsSignedIn: Bool = value == "true" ? true : false
            self.currentUserIsSignedIn = userIsSignedIn
        }
        
    var body: some Scene {
        WindowGroup {
//            UnitTestingBootcampView(isPremium: true)
            UITestingBootcampView(currentUserIsSignedIn: true)
        }
    }
}
