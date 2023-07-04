//
//  AppDelegate.swift
//  iTrivia
//
//  Created by Davron Abdukhakimov on 03/07/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
class AppDelegate: UIResponder,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        let db = Firestore.firestore()
        print(db)
        return true
    }
}
