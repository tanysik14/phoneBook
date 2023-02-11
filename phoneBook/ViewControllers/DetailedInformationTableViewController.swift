//
//  DetailedInformationTableViewController.swift
//  PhoneBook
//
//  Created by Tatsiana Pauliukova on 9.02.23.
//

import UIKit

class DetailedInformationTableViewController: UITableViewController {
    
    var data = Person.creatPerson()
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        data.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(data[section].name) \(data[section].lastName)"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacte", for: indexPath)
        let contact = data[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = contact.phone
        default:
            content.text = contact.email
        }
    
        cell.contentConfiguration = content
        return cell
    }

}
