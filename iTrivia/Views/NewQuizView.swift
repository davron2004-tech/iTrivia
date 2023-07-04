//
//  NewQuizView.swift
//  iTrivia
//
//  Created by Davron Abdukhakimov on 04/07/23.
//

import SwiftUI

struct NewQuizView: View {
    @State var topic = ""
    @State var difficulty = ""
    @State var number = ""
    @State var type = ""
    var body: some View {
        VStack{
            Text("iTrivia")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .foregroundColor(Color.blue)
            Spacer()
            Picker(selection: $topic, label: Text("Topic Category")) {
                Text("General Knowledge").tag(1)
                Text("Mythology").tag(2)
                Text("Sports").tag(3)
                Text("Geopraphy").tag(4)
                Text("History").tag(5)
                Text("Politics").tag(6)
                Text("Art").tag(7)
                Text("Celebrities").tag(8)
                Text("Animals").tag(9)
                Text("Vehicles").tag(10)
            }
            Picker(selection: $difficulty, label: Text("Difficulty Category")) {
                Text("Easy").tag(1)
                Text("Medium").tag(2)
                
                Text("Hard").tag(3)
            }
            Picker(selection: $type, label: Text("Type Category")) {
                Text("True/False").tag(1)
                Text("Multiple Choice").tag(2)
            }
            TextField("Number Of Questions", text: $number)
                .frame(width: 140,height: 30,alignment: .center)
                .padding(.horizontal)
                .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color.blue, lineWidth: 2)
                )
            Spacer()
            NavigationLink(destination: QuestionView().onAppear(){
                let quizManager = QuizManager(number: number, difficulty: difficulty, type: type, topic: topic)
            }){
                Text("Generate Quiz")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            
        }
    }
}
struct NewQuizView_Previews: PreviewProvider {
    static var previews: some View {
        NewQuizView()
    }
}
