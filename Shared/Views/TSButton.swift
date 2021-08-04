//
//  TSButton.swift
//  TS SwiftUI Catalog
//
//  Created by Thomas Sillmann on 08.07.21.
//

import SwiftUI

struct TSButton: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Simple button")
                        .font(.headline)
                    Button("Greeting") {
                        print("Hello world")
                    }
                }
                Divider()
                Group {
                    Text("Button with custom label")
                        .font(.headline)
                    Button(action: {
                        print("Hello world")
                    }, label: {
                        HStack {
                            Image(systemName: "globe")
                            Text("Greeting")
                        }
                    })
                }
                if #available(macOS 12.0, iOS 15.0, *) {
                    Divider()
                    Group {
                        Text("Button with explicit role")
                            .font(.headline)
                        Button("Delete", role: .destructive) {
                            print("Delete something ...")
                        }
                    }
                }
            }
        }
        .navigationTitle("TSButton.swift")
        .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TSButton()
    }
}
