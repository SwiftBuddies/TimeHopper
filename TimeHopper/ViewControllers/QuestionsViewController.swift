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
    
    var currentUniverse: Universe?
    var selectedYear: Year?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstAnswer.layer.cornerRadius = 10
        secondAnswer.layer.cornerRadius = 10
        thirdAnswer.layer.cornerRadius = 10
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "Ой, нет"

        questionTopicLabel.text = Question.universe.textQuestion
        firstAnswer.setTitle(universes.first?.title, for: .normal)
        secondAnswer.setTitle(universes.last?.title, for: .normal)
        
        currentUniverse = universes.first
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let locationVC = segue.destination as? LocationViewController else { return }
            locationVC.year = selectedYear
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if questionTopicLabel.text == Question.universe.textQuestion {
            if sender == firstAnswer {
                currentUniverse = universes[0]
            } else if sender == secondAnswer {
                currentUniverse = universes[1]
            }
            questionTopicLabel.text = Question.location.textQuestion
            updateUI()
        } else if  questionTopicLabel.text == Question.location.textQuestion {
            questionTopicLabel.text = Question.year.textQuestion
            updateUI()
        } else if questionTopicLabel.text == Question.year.textQuestion {
            if let year = currentUniverse?.locations[0].years.first(where: { $0.title == sender.currentTitle }) {
                selectedYear = year
               // performSegue(withIdentifier: "locationSegue", sender: self)
            }
        }
        thirdAnswer.isHidden = true
    }
    
    @IBAction func secretButtonPressed(_ sender: UIButton) {
        
    }
}

// MARK: - Private Methods
extension QuestionsViewController {
    private func updateUI() {
        guard let universe = currentUniverse else {
            return
        }
        
        if questionTopicLabel.text == Question.universe.textQuestion {
            // Показываем названия вселенных на первых двух кнопках
            firstAnswer.setTitle(universes[0].title, for: .normal)
            secondAnswer.setTitle(universes[1].title, for: .normal)
        } else if questionTopicLabel.text == Question.location.textQuestion {
            // Показываем названия локаций на первых двух кнопках
            firstAnswer.setTitle(universe.locations[0].title, for: .normal)
            secondAnswer.setTitle(universe.locations[1].title, for: .normal)
        } else if questionTopicLabel.text == Question.year.textQuestion {
            // Показываем названия годов на следующих двух кнопках
            if let year = universe.locations[0].years.first {
                firstAnswer.setTitle(year.title, for: .normal)
            }
            if universe.locations[0].years.count > 1 {
                let year = universe.locations[0].years[1]
                secondAnswer.setTitle(year.title , for: .normal)
            }
        }
    }
}

