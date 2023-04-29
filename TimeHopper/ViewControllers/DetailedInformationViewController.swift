//
//  DetailedInformationViewController.swift
//  TimeHopper
//
//  Created by Pavel Karunnyj on 26.04.2023.
//

import UIKit

final class DetailedInformationViewController: UIViewController {
    
    @IBOutlet var detailedInformation: UILabel!
    
    var universe: Universe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = universe.title
        detailedInformation.text = universe.locations.description
    }
}
