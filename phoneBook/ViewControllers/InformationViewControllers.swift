//
//  InformationViewControllers.swift
//  PhoneBook
//
//  Created by Tatsiana Pauliukova on 8.02.23.
//

import UIKit

class InformationViewControllers: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(person.name) \(person.lastName)"
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
      
    }

}
