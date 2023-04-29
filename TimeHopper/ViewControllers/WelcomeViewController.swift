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
    
    let universes = Universe.getUniverses(from: DataStore.shared.universes)
    let nashMir = "Наш мир"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeMachineButton.layer.cornerRadius = 10
        
        print(universes)
        
        // это пример использования на последующих экранах, куда будет передаваться universes
        // при клике на кнопку в массиве будет поиск элемента с тайтлом, равным тексту кнопки
        let universe = universes.first(where: {$0.title == nashMir})
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

