//
//  QuestionController.swift
//  QA
//
//  Created by Ilgar Ilyasov on 9/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class QuestionController {
    
    private(set) var questions: [Question] = []
    
    // MARK: - CRUD
    
    func create(question: String, asker: String){
        let newQuestion = Question(question: question, asker: asker)
        questions.append(newQuestion)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else { return }
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
}
