//
//  TeamInfoViewController.swift
//  TimeHopper
//
//  Created by Elena Sharipova on 28.04.2023.
//

import UIKit

class TeamInfoViewController: UIViewController {
    
    @IBOutlet var membersPhotos: [UIImageView]!
    @IBOutlet var membersNames: [UILabel]!
    @IBOutlet var membersTgNames: [UILabel]!
    
    
    let members = TeamMember.getTeamMembers(from: DataStore.shared.team)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTeamInfo()
    }
    
    override func viewWillLayoutSubviews() {

        for (index, _) in members.enumerated() {
            membersPhotos[index].layer.cornerRadius = membersPhotos[index].frame.width / 2
        }
    }
    
}

//MARK: - Private func
extension TeamInfoViewController {
    private func updateTeamInfo() {
        for (index, member) in members.enumerated() {
            membersNames[index].text = member.fullName
            membersTgNames[index].text = member.telegram
            membersPhotos[index].image = UIImage(named: member.photo)
        }
    }
}
