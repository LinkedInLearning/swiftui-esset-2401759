//
//  TSObservedObject.swift
//  TSObservedObject
//
//  Created by Thomas Sillmann on 20.07.21.
//

import SwiftUI

struct TSObservedObject: View {
    @ObservedObject var person: CustomPerson
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(person.firstName) \(person.lastName)")
                .padding()
            Form {
                TextField("First name", text: $person.firstName)
                TextField("Last name", text: $person.lastName)
            }
        }
        .navigationTitle("TSObservedObject.swift")
    }
}

struct TSObservedObject_Previews: PreviewProvider {
    static var previews: some View {
        TSObservedObject(person: CustomPerson(firstName: "Max", lastName: "Mustermann"))
    }
}
