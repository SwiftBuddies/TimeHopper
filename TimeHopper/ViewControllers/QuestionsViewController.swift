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
    var selectedLocation: Location?
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstAnswer.layer.cornerRadius = 10
        secondAnswer.layer.cornerRadius = 10
        thirdAnswer.layer.cornerRadius = 10
        
        questionTopicLabel.text = Question.universe.textQuestion
        firstAnswer.setTitle(universes.first?.title, for: .normal)
        secondAnswer.setTitle(universes.last?.title, for: .normal)
        
        currentUniverse = universes.first
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quizVC = segue.destination as? QuizViewController {
            quizVC.universes = universes
        }
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let localVC = viewController as? LocationViewController {
                localVC.selectedYear = selectedYear
                localVC.userName = userName
            } else if let navigationVC = viewController as? UINavigationController {
                guard let tableVC = navigationVC.topViewController as? LocationTableViewController else { return }
                tableVC.selectedYear = selectedYear
            }
        }
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if questionTopicLabel.text == Question.universe.textQuestion {
            if sender == firstAnswer {
                currentUniverse = universes[0]
            } else if sender == secondAnswer {
                currentUniverse = universes[1]
            }
            questionTopicLabel.text = Question.location.textQuestion
            updateUI(selectedLocationIndex: 0)
        } else if  questionTopicLabel.text == Question.location.textQuestion {
            questionTopicLabel.text = Question.year.textQuestion
            let selectedLocationIndex = sender == firstAnswer ? 0 : 1
            updateUI(selectedLocationIndex: selectedLocationIndex)
            questionTopicLabel.text = Question.year.textQuestion
        } else if questionTopicLabel.text == Question.year.textQuestion {
            if let year = currentUniverse?.locations[0].years.first(where: { $0.title == sender.currentTitle }) {
                selectedYear = year
                performSegue(withIdentifier: "locationSegue", sender: self)
            }
        }
        thirdAnswer.isHidden = true
    }
    
}


// MARK: - Private Methods
extension QuestionsViewController {
    private func updateUI(selectedLocationIndex: Int?) {
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
            if let locationIndex = selectedLocationIndex, locationIndex < universe.locations.count {
                let location = universe.locations[locationIndex]
                if let year = location.years.first {
                    firstAnswer.setTitle(year.title, for: .normal)
                }
                if location.years.count > 1 {
                    let year = location.years[1]
                    secondAnswer.setTitle(year.title, for: .normal)
                }
            }
        }
    }
    
    
}
