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
        tabBarController?.navigationItem.hidesBackButton = true
        navigationItem.title = route.title
        detailedInformation.text = route.description
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarController?.navigationItem.hidesBackButton = false
    }
}
