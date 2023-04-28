//
//  TeamInfoViewController.swift
//  TimeHopper
//
//  Created by Elena Sharipova on 28.04.2023.
//

import UIKit

class TeamInfoViewController: UIViewController {
    
    @IBOutlet var juliaKazarinaPhoto: UIImageView!
    @IBOutlet var elenaDemchenkoPhoto: UIImageView!
    @IBOutlet var pavelKarunnyjPhoto: UIImageView!
    @IBOutlet var elenaSharipovaPhoto: UIImageView!
    
    override func viewWillLayoutSubviews() {
        juliaKazarinaPhoto.layer.cornerRadius = juliaKazarinaPhoto.frame.width / 2
        elenaDemchenkoPhoto.layer.cornerRadius = elenaDemchenkoPhoto.frame.width / 2
        pavelKarunnyjPhoto.layer.cornerRadius = pavelKarunnyjPhoto.frame.width / 2
    }
    
}
