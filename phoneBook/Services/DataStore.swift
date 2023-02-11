//
//  DataStore.swift
//  phoneBook
//
//  Created by Tatsiana Pauliukova on 8.02.23.
//

import Foundation

class DataStore {
    
   static let shared = DataStore()
    
    let names = [
        "Ivan", "Alex", "Sveta", "Jon", "Aleksey"
    ]
    let lastNames =  [
        "Petrov", "Jons", "Nikitsin", "Sidorov", "Kruglov"
    ]
    let phones = [
        "80994446578", "8077443289044", "805431890542",
        "875195432973", "806541863008"
    ]
    let emails = [
        "gdxbvsertf11@mail.ru", "nngsrwufd22@mail.ru", "fsedauf33@mail.ru",
        "ffsbcyli44mail.ru", "cserfdcnhyu55mail.ru"
    ]
    
    private init() {}
    
}


