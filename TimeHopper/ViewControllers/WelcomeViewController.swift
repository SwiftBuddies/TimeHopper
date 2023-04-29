//
//  ViewController.swift
//  TimeHopper
//
//  Created by SwiftBuddies on 25.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var timeMachineButton: UIButton!
    
    let universes = Universe.getUniverses(from: DataStore.shared.universes)
    let nashMir = "Наш мир"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeMachineButton.layer.cornerRadius = 10
        nameTextField.delegate = self
        print(universes)
        
        // это пример использования на последующих экранах, куда будет передаваться universes
        // при клике на кнопку в массиве будет поиск элемента с тайтлом, равным тексту кнопки
        let universe = universes.first(where: {$0.title == nashMir})
        print(universe ?? "")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionsVC = segue.destination as? QuestionsViewController {
            //            questionsVC.userName = nameTextField.text
            //            questionsVC.universes = universes
        } else {
            guard let teamInfoVC = segue.destination as? TeamInfoViewController else { return }
            //            teamInfoVC.memberTeam = memberTeam
        }
    }
    
    @IBAction func timeMachineButton(_ sender: UIButton) {
        if nameTextField.text == "" {
            showAlert(title: "Оуууу", message: "Дружище, как тебя зовут?")
        }
        performSegue(withIdentifier: "showQuestionsVC", sender: nil)
    }
    
    @IBAction func aboutTeamButton(_ sender: UIButton) {
    }
    
    private func  showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        }
}

extension WelcomeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
