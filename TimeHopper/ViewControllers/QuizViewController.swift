//
//  QuizViewController.swift
//  TimeHopper
//
//  Created by Yelena Demchenko on 26.04.2023.
//

import UIKit

final class QuizViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var questionLabel: UILabel!
    
    
    @IBOutlet var firstAnswerLabel: UILabel!
    @IBOutlet var secondAnswerLabel: UILabel!
    @IBOutlet var thirdAnswerLabel: UILabel!
    @IBOutlet var fourthAnswerLabel: UILabel!
    
    
    @IBOutlet var firstSwitch: UISwitch!
    @IBOutlet var secondSwitch: UISwitch!
    @IBOutlet var thirdSwitch: UISwitch!
    @IBOutlet var fourthSwitch: UISwitch!
    
    // MARK: - Private properties
    private var questionIndex = 0
    private var quizQuestions: [QuizQuestion] {
        DataStore.shared.quizQuestions
    }
    
    private var currentAnswers: [QuizAnswer] {
        quizQuestions[questionIndex].answers
    }
    
    private var answerChosen: [QuizAnswer] = []
    
    
    // MARK: -  View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - IBActions
    @IBAction func answerButtonPressed(_ sender: Any) {
        for (index, answerSwitch) in [firstSwitch, secondSwitch, thirdSwitch, fourthSwitch].enumerated() {
            if answerSwitch?.isOn == true {
                answerChosen.append(currentAnswers[index])
            }
        }
        nextQuestion()
    }
}

// MARK: - Private Methods
private extension QuizViewController {
    func resetSwitches() {
        for switches in [firstSwitch, secondSwitch, thirdSwitch, fourthSwitch] {
            switches?.isOn = true
        }
    }
    
    func updateUI() {
        let currentQuestion = quizQuestions[questionIndex]
        questionLabel.text = currentQuestion.title
        
        //Какой заголовок вывести в квизе?
        switch questionIndex {
        case 0:
            title = "Начинаем! 🏁"
        case 1:
            title = "Еще чуть-чуть 😃"
        case 2:
            title = "Почти закончили 🤌🏻"
        default:
            title = "Последний рывок... 😎"
        }
        
        let totalProgress = Float(questionIndex) / Float(quizQuestions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        
        for (index, answer) in currentAnswers.enumerated() {
            switch index {
            case 0:
                firstAnswerLabel.text = answer.title
            case 1:
                secondAnswerLabel.text = answer.title
            case 2:
                thirdAnswerLabel.text = answer.title
            default:
                fourthAnswerLabel.text = answer.title
            }
        }
        resetSwitches()
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < quizQuestions.count {
            updateUI()
            return
        }
        //добавить идентификатор в приветственную страницу путеводителя?
        performSegue(withIdentifier: "showResult", sender: nil) // или какой переход?
    }
}
