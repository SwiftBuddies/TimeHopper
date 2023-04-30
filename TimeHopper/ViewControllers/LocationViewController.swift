//
//  LocationViewController.swift
//  TimeHopper
//
//  Created by Pavel Karunnyj on 26.04.2023.
//

import UIKit

final class LocationViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var selectedYear: Year!
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(userName ?? ""), ты в \(selectedYear.title) в \(selectedYear.time)"
        welcomeLabel.text = selectedYear.description
    }
    

    

}
