//
//  Person.swift
//  phoneBook
//
//  Created by Tatsiana Pauliukova on 8.02.23.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullNAme: String { "\(name) \(lastName)" }
    
}

extension Person {
    
    static func creatPerson() -> [Person] {
        
        let data = DataStore.shared
        var somePersons: [Person] = []
        
        let names = data.names.shuffled()
        let lastNames = data.lastNames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()
        
        let numberOfElements = names.count
        
        for index in 0..<numberOfElements {
                
                let person = Person(
                    name: names[index],
                    lastName: lastNames[index],
                    phone: phones[index],
                    email: emails[index]
                )
                somePersons.append(person)
          
        }
        return somePersons
      
    }
}
