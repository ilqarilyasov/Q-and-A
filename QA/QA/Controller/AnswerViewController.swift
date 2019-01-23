//
//  AnswerViewController.swift
//  QA
//
//  Created by Ilgar Ilyasov on 9/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func updateViews() {
        questionLabel.text = question?.question
        askerLabel.text = question?.asker
        // ALERT
    }
    
    @IBAction func submitAnswerAction(_ sender: Any) {
        guard let answerer = answererTextField.text,
              let answer = answerTextView.text,
              let question = question else { return }
        
        
        if answerer != "" && answerer != "" {
            questionController?.update(question: question, answer: answer, answerer: answerer)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    var questionController: QuestionController?
    var question: Question?

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
}
