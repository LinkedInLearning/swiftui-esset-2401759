//
//  Person.swift
//  Person
//
//  Created by Thomas Sillmann on 28.07.21.
//

import Foundation

class Person: Identifiable {
    var firstName: String
    var lastName: String
    var fullName: String {
        firstName + " " + lastName
    }
    
    var id: String {
        fullName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class CustomPerson: ObservableObject {
    @Published var firstName: String
    @Published var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
