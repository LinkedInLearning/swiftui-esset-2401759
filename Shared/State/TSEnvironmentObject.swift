//
//  TSEnvironmentObject.swift
//  TSEnvironmentObject
//
//  Created by Thomas Sillmann on 21.07.21.
//

import SwiftUI

struct TSEnvironmentObject: View {
    @StateObject private var person = CustomPerson(firstName: "Max", lastName: "Mustermann")
    
    var body: some View {
        PersonView()
            .environmentObject(person)
            .navigationTitle("TSEnvironmentObject.swift")
    }
}

struct PersonView: View {
    @EnvironmentObject var person: CustomPerson
    
    var body: some View {
        NavigationView {
            Form {
                Text("Person: \(person.firstName) \(person.lastName)")
                NavigationLink("Edit", destination: EditInfoView())
            }
        }
    }
}

struct EditInfoView: View {
    @EnvironmentObject var person: CustomPerson
    
    var body: some View {
        VStack(spacing: 20) {
            Text("You're going to edit the given data.")
            NavigationLink("Start editing", destination: EditView())
        }
    }
}

struct EditView: View {
    @EnvironmentObject var person: CustomPerson
    
    var body: some View {
        Form {
            TextField("First name", text: $person.firstName)
            TextField("Last name", text: $person.lastName)
        }
    }
}

struct TSEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        TSEnvironmentObject()
    }
}
