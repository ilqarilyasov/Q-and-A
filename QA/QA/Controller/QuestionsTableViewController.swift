//
//  QuestionsTableViewController.swift
//  QA
//
//  Created by Ilgar Ilyasov on 9/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QACell", for: indexPath) as? QuestionsTableViewCell else { return UITableViewCell()}
        
        let theQuestion = questionController.questions[indexPath.row]
        cell.question = theQuestion
        
        return cell
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AskQuestionSegue" {
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }
            destinationVC.questionController = questionController
        } else if segue.identifier == "QACellSegue" {
            guard let destionatinVC = segue.destination as? AnswerViewController,
                  let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let question = questionController.questions[indexPath.row]
            destionatinVC.questionController = questionController
            destionatinVC.question = question
        }
    }
    
    let questionController = QuestionController()
    
    @IBAction func askQuestionAction(_ sender: Any) {
        
    }
    
    @IBOutlet weak var askQuestion: UIBarButtonItem!
    
}
