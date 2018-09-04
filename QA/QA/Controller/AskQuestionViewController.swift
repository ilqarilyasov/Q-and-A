//
//  AskQuestionViewController.swift
//  QA
//
//  Created by Ilgar Ilyasov on 9/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

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
    
    var questionController: QuestionController?
    
    @IBAction func submitQuestionAction(_ sender: Any) {
        guard let theQuestion = questionTextView.text,
            let theAsker = askerNameTextField.text else { return }
        
        questionController?.create(question: theQuestion, asker: theAsker)
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var askerNameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var submitQuestion: UIBarButtonItem!
}
