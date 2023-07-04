//
//  iTriviaApp.swift
//  iTrivia
//
//  Created by Asror Aliqulov on 03/07/23.
//

import SwiftUI

@main
struct iTriviaApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            WelcomeScreen()
        }
    }
}
