//
//  TSForEach.swift
//  TS SwiftUI Catalog (iOS)
//
//  Created by Thomas Sillmann on 12.07.21.
//

import SwiftUI

struct TSForEach: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("RatingView")
                        .font(.headline)
                    RatingView()
                }
                Divider()
                Group {
                    Text("PersonsView")
                        .font(.headline)
                    PersonsView()
                }
            }
        }
        .navigationTitle("TSForEach.swift")
        .padding()
    }
}

struct RatingView: View {
    @State private var rating = 0
    
    var body: some View {
        HStack {
            ForEach(1..<6) { value in
                Button(action: {
                    rating = value
                }, label: {
                    Image(systemName: value <= rating ? "star.fill" : "star")
                        .font(.title)
                })
                .buttonStyle(.plain)
            }
        }
    }
}

struct PersonsView: View {
    private let persons = [
        Person(firstName: "Thomas", lastName: "Sillmann"),
        Person(firstName: "Max", lastName: "Mustermann")
    ]
    
    var body: some View {
        VStack {
            ForEach(persons) { person in
                Text("\(person.fullName)")
            }
        }
    }
} 

struct TSForEach_Previews: PreviewProvider {
    static var previews: some View {
        TSForEach()
    }
}
