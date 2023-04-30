//
//  LocationViewController.swift
//  TimeHopper
//
//  Created by Pavel Karunnyj on 26.04.2023.
//

import UIKit

final class LocationViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var navigationBar: UINavigationItem!
    
    var selectedYear: Year!
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.title = "\(userName ?? ""), ты в \(selectedYear.title)"
        welcomeLabel.text = selectedYear.description
    }
}
