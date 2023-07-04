//
//  WelcomeScreen.swift
//  iTrivia
//
//  Created by Asror Aliqulov on 03/07/23.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Text("iTrivia")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .foregroundColor(Color.blue)
                Spacer()
                HStack {
                    NavigationLink(destination: SignUpView()){
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(20)
                            .padding(.trailing, 30)
                    }
                    NavigationLink(destination: LogInView()){
                        Text("Log In")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                    
                }
                
            }
            .padding(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
