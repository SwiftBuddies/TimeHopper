//
//  DetailedInformationViewController.swift
//  TimeHopper
//
//  Created by Pavel Karunnyj on 26.04.2023.
//

import UIKit

final class DetailedInformationViewController: UIViewController {
    
    @IBOutlet var detailedInformation: UILabel!
    
    var route: Route!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationItem.hidesBackButton = true
        navigationItem.title = route.title
        detailedInformation.text = route.description
    }
}
