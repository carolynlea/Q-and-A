//
//  Q&AListCell.swift
//  Q&A
//
//  Created by Carolyn Lea on 7/30/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class Q_AListCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        
        guard let question = question else {return}
        
        questionLabel.text = question.aQuestion
        askedByLabel.text = question.asker
        answerLabel.text = question.answer
    }
}
