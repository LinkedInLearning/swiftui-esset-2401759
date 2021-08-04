//
//  StateNavigationView.swift
//  StateNavigationView
//
//  Created by Thomas Sillmann on 28.07.21.
//

import SwiftUI

struct StateNavigationView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Property", destination: TSProperty())
                NavigationLink("State", destination: TSState())
                NavigationLink("Binding", destination: TSBinding())
                NavigationLink("ObservedObject", destination: TSObservedObject(person: CustomPerson(firstName: "Max", lastName: "Mustermann")))
                NavigationLink("StateObject", destination: TSStateObject())
                #if os(iOS)
                NavigationLink("EnvironmentObject", destination: TSEnvironmentObject())
                #endif
            }
            .navigationTitle("State")
        }
    }
}

struct StateNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        StateNavigationView()
    }
}
