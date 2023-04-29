//
//  QuestionsViewController.swift
//  TimeHopper
//
//  Created by Юлия Ястребова on 26.04.2023.
//

import UIKit

final class QuestionsViewController: UIViewController {
    
    @IBOutlet var questionTopicLabel: UILabel!
    
    @IBOutlet var firstAnswer: UIButton!
    @IBOutlet var secondAnswer: UIButton!
    @IBOutlet var thirdAnswer: UIButton!
    
    let universes = Universe.getUniverses(from: DataStore.shared.universes)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstAnswer.layer.cornerRadius = 10
        secondAnswer.layer.cornerRadius = 10
        thirdAnswer.layer.cornerRadius = 10
        
        updateUI()
    }
    
// MARK: - IB Actions
    @IBAction func firstAnswerButtonPressed(_ sender: UIButton) {
        thirdAnswer.isHidden = true
        updateUI()
    }
    
    @IBAction func secondAnswerButtonPressed(_ sender: UIButton) {
        thirdAnswer.isHidden = true
        updateUI()
    }
    
    @IBAction func thirdAnswerButtonPressed(_ sender: Any) {
    }
}

// MARK: - Private Methods
extension QuestionsViewController {
    private func updateUI() {
        firstAnswer.setTitle(universes[0].title, for: .normal)
        secondAnswer.setTitle(universes[1].title, for: .normal)
        questionTopicLabel.text = Question.universe.textQuestion
    }
}
