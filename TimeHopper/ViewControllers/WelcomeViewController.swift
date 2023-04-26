//
//  ViewController.swift
//  TimeHopper
//
//  Created by SwiftBuddies on 25.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var timeMachineButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeMachineButton.layer.cornerRadius = 15
    }
//
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//        view.endEditing(true)
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showQuestionsViewController" {
//            let questionsVC = segue.destination as? QuestionsViewController
//            questionsVC.userName = nameTextField.text
//        } else {
//            guard let teamInfoVC = segue.destination as? TeamInfoViewController else { return }
//            teamInfoVC.memberTeam = memberTeam
//        }
//    }
//
//    @IBAction func timeMachineButton(_ sender: UIButton) {
//        performSegue(withIdentifier: "showQuestionsViewController", sender: nil)
//    }
//    @IBAction func aboutTeamButton(_ sender: UIButton) {
//    }
}

