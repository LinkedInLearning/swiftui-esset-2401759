//
//  TSStateObject.swift
//  TSStateObject
//
//  Created by Thomas Sillmann on 20.07.21.
//

import SwiftUI

struct TSStateObject: View {
    @StateObject private var person = CustomPerson(firstName: "Max", lastName: "Mustermann")
    
    var body: some View {
        VStack {
            TextField("First name", text: $person.firstName)
            TextField("Last name", text: $person.lastName)
        }
        .navigationTitle("TSStateObject.swift")
    }
}

struct TSStateObject_Previews: PreviewProvider {
    static var previews: some View {
        TSStateObject()
    }
}
