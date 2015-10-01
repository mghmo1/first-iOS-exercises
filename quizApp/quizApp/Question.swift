//
//  Question.swift
//  quizApp
//
//  Created by Maximilian Ott on 23.06.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import Foundation

struct Question {
    
    var name: String?
    var text: String?
    var answer: String?
    var option1: String?
    var option2: String?
    var correct: Bool?
    
    
    
    init(json: NSDictionary) {
        self.name = json["name"] as? String
        self.text = json["text"] as? String
        self.answer = json["answer"] as? String
        self.option1 = json["option1"] as? String
        self.option2 = json["option2"] as? String
        self.correct = json["correct"] as? Bool
    }
    

    init() {
        
    }
    
}