//
//  LogInController.swift
//  iTrivia
//
//  Created by Davron Abdukhakimov on 03/07/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
struct LogInController{
    let email:String
    let password:String
    func checkUser(){
        Auth.auth().signIn(withEmail: email, password: password) {result, error in
            if let e = error{
                print(e.localizedDescription)
            }
            else{
                print(result!)
            }
        }
    }
}
