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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeMachineButton.layer.cornerRadius = 10
        nameTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let questionsVC = segue.destination as? QuestionsViewController else { return }
//        questionsVC.userName = nameTextField.text
    }
    
    @IBAction func timeMachineButton(_ sender: UIButton) {
        if nameTextField.text == "" {
            showAlert(title: "Оуууу", message: "Дружище, как тебя зовут?")
        }
        performSegue(withIdentifier: "showQuestionsVC", sender: nil)
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
