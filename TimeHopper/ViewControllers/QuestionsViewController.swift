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
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Ой, нет",
            style: .plain,
            target: nil,
            action: nil
        )
        
        firstAnswer.setTitle(universes[0].title, for: .normal)
        secondAnswer.setTitle(universes[1].title, for: .normal)
    }
}
