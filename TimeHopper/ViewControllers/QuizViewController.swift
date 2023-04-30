//
//  QuizViewController.swift
//  TimeHopper
//
//  Created by Yelena Demchenko on 26.04.2023.
//

import UIKit

final class QuizViewController: UIViewController {
    
    var universes: [Universe]! //тут передала вселенные

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
    
    // MARK: -  View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // MARK: - IBActions
    @IBAction func answerButtonPressed(_ sender: Any) {
    }
    
}
