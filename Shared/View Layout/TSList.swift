//
//  TSList.swift
//  TS SwiftUI Catalog (iOS)
//
//  Created by Thomas Sillmann on 13.07.21.
//

import SwiftUI

struct TSList: View {
    var body: some View {
        VStack(spacing: 20) {
            Group {
                Text("StaticList")
                    .font(.headline)
                StaticList()
            }
            Divider()
            Group {
                Text("DynamicList")
                    .font(.headline)
                DynamicList()
            }
        }
        .navigationTitle("TSList.swift")
        .padding()
    }
}

struct StaticList: View {
    var body: some View {
        List {
            Text("Some cell")
            Text("Cell with large text")
                .font(.largeTitle)
            HStack {
                Image(systemName: "swift")
                Text("Cell with image")
            }
            Button("Some setting") {
                print("Pressed button")
            }
        }
    }
}

struct DynamicList: View {
    private let persons = [
        Person(firstName: "Bill", lastName: "Denbrough"),
        Person(firstName: "Mike", lastName: "Hanlon"),
        Person(firstName: "Ben", lastName: "Hanscom"),
        Person(firstName: "Beverly", lastName: "Marsh"),
        Person(firstName: "Richie", lastName: "Tozier"),
        Person(firstName: "Eddie", lastName: "Kaspbrak"),
        Person(firstName: "Stan", lastName: "Uris")
    ]
    
    var body: some View {
        List(persons) { person in
            Text(person.fullName)
        }
    }
}

struct TSList_Previews: PreviewProvider {
    static var previews: some View {
        TSList()
    }
}
