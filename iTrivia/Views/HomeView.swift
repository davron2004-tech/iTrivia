//
//  HomeView.swift
//  iTrivia
//
//  Created by Davron Abdukhakimov on 03/07/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack{
                Text("iTrivia")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .foregroundColor(Color.blue)
                    .padding(.trailing,100)
                NavigationLink(destination: WelcomeScreen()){
                    Text("Log Out")
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                        .foregroundColor(Color.blue)
                }
            }
            Spacer()
            NavigationLink(destination: NewQuizView()){
                Text("New Quiz")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
