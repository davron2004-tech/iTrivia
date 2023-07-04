//
//  QuizManager.swift
//  iTrivia
//
//  Created by Davron Abdukhakimov on 04/07/23.
//

import UIKit
struct QuizManager{
    let number:String
    let difficulty:String
    let type:String
    let topic:String
    var type1: String{
        switch type {
        case "Multiple Choice":
            return "multiple"
        case "True/False":
            return "boolean"
        default:
            return "0"
        }
    }
    var difficulty1:String{
        switch  difficulty{
        case "Easy":
            return "easy"
        case "Medium":
            return "medium"
        case "Hard":
            return "hard"
        default:
            return "0"
        }
    }
    var category: String{
        switch topic {
        case "General Knowledge":
            return "9"
        case "Mythology":
            return "20"
        case "Sports":
            return "21"
        case "Geography":
            return "22"
        case "History":
            return "23"
        case "Politics":
            return "24"
        case "Art":
            return "25"
        case "Celebrities":
            return "26"
        case "Animals":
            return "27"
        case "Vehicles":
            return "28"
        default:
            return "0"
        }
    }
    let urlString = "https://opentdb.com/api.php?"
    func fetchData(){
        if let url = URL(string: "\(urlString)amount=\(number)&category=\(category)&difficulty=\(difficulty1)&type=\(type1)"){
            let urlSession = URLSession(configuration: .default)
            let task = urlSession.dataTask(with: url) { data, response, error in
                
            }
            task.resume()
        }
    }
    
    
    
}
