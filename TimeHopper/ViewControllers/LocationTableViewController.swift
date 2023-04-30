//
//  LocationTableViewController.swift
//  TimeHopper
//
//  Created by Pavel Karunnyj on 26.04.2023.
//

import UIKit

final class LocationTableViewController: UITableViewController {
    
    var selectedYear: Year!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let route = selectedYear.routes[indexPath.row]
        let detailsVC = segue.destination as? DetailedInformationViewController
        detailsVC?.route = route
        
    }
    

        
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "location", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let location = selectedYear.routes[indexPath.row]
            content.text = location.title
            //            content.image = UIImage(named: )
            content.imageProperties.cornerRadius = tableView.rowHeight / 2
            cell.contentConfiguration = content
            return cell
        }
        
    }
// MARK: - UITableViewDataSource
extension LocationTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selectedYear.routes.count
    }
}
//// MARK: - UITableViewDelegate
//extension LocationTableViewController {
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let rout = selectedYear.routes[indexPath.row]
//        performSegue(withIdentifier: "showDetails", sender: rout)
//    }
//}
