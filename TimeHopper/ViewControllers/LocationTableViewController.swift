//
//  LocationTableViewController.swift
//  TimeHopper
//
//  Created by Pavel Karunnyj on 26.04.2023.
//

import UIKit

final class LocationTableViewController: UITableViewController {
    
    private let universeList = Universe.getUniverses(from: DataStore.shared.universes)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let universe = universeList[indexPath.row]
        let detailsVC = segue.destination as? DetailedInformationViewController
        detailsVC?.universe = universe
    }
}

// MARK: - UITableViewDataSource
extension LocationTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        universeList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "location", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let location = universeList[indexPath.row]
        content.text = location.title
        //        content.image = UIImage(named: )
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
    }
}
