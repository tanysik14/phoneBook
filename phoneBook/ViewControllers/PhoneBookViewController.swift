//
//  PhoneBookViewController.swift
//  phoneBook
//
//  Created by Tatsiana Pauliukova on 8.02.23.
//

import UIKit

class PhoneBookViewController: UITableViewController {
    
    var data = Person.creatPerson()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameContacte", for: indexPath)
        let contact = data[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.name) \(contact.lastName)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let contact = data[indexPath.row]
        performSegue(withIdentifier: "show", sender: contact)
    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentContact = data.remove(at: sourceIndexPath.row)
        data.insert(currentContact, at: destinationIndexPath.row)
    }
    

    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let informationsVC = segue.destination as? InformationViewControllers else { return }
        informationsVC.person = sender as? Person
    }
}
