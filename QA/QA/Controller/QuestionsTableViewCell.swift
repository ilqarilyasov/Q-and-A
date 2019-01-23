//
//  QuestionsTableViewCell.swift
//  QA
//
//  Created by Ilgar Ilyasov on 9/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var question: Question? {
        didSet { updateViews() }
    }
    
    private func updateViews() {
        guard let unwrappedQuestion = question else { return }
        questionLabel.text = unwrappedQuestion.question
        askedByLabel.text = unwrappedQuestion.asker
        
    }
    
    @IBOutlet weak var questionConstantLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var triggerLable: UILabel!
    
}
