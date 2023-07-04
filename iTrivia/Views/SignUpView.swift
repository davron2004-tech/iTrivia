//
//  SignUpView.swift
//  iTrivia
//
//  Created by Davron Abdukhakimov on 03/07/23.
//

import SwiftUI

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            Text("iTrivia")
                .padding(.vertical)
                .foregroundColor(Color.blue)
                .fontWeight(.bold)
                .font(.system(size: 40))
            Spacer()
            TextField("Email", text: $email)
                .frame(width: 200,height: 30,alignment: .center)
                .padding(.horizontal)
                .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color.blue, lineWidth: 2)
                )
                .padding(.bottom,30)
            TextField("Password", text: $password)
                .frame(width: 200,height: 30,alignment: .center)
                .padding(.horizontal)
                .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color.blue, lineWidth: 2)
                )
            Spacer()
            NavigationLink(destination: HomeView().onAppear(){
                let signUpController = SignUpController(email: email, password: password)
                signUpController.registerUser()
            }){
                Text("Sign Up")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            
            

        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
