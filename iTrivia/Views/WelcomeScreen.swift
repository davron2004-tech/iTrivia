//
//  WelcomeScreen.swift
//  iTrivia
//
//  Created by Asror Aliqulov on 03/07/23.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack {
            Spacer()
            Text("iTrivia")
                .fontWeight(.bold)
                .font(.system(size: 40))
            Spacer()
            HStack {
                Button("Sign Up") {
                    
                }
                    .foregroundColor(.blue)
                    .font(.system(size: 24))
                    .padding(.horizontal)
                Button("Log In") {
                    
                }
                    .foregroundColor(.blue)
                    .font(.system(size: 24))
                    .padding(.horizontal)
            }
        }
        .padding(.all)
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
