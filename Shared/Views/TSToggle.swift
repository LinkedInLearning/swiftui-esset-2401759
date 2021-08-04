//
//  TSToggle.swift
//  TSToggle
//
//  Created by Thomas Sillmann on 26.07.21.
//

import SwiftUI

struct TSToggle: View {
    @State private var isOn = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Simple toggle")
                        .font(.headline)
                    Toggle("Toggle", isOn: $isOn)
                }
                Divider()
                Group {
                    Text("Toggle with custom label")
                        .font(.headline)
                    Toggle(isOn: $isOn) {
                        HStack {
                            Image(systemName: "switch.2")
                            Text("Custom toggle")
                        }
                    }
                }
                if #available(macOS 12.0, iOS 15.0, *) {
                    Divider()
                    Group {
                        Text("Toggle with custom style")
                            .font(.headline)
                        Toggle(isOn: $isOn) {
                            HStack {
                                Image(systemName: "switch.2")
                                Text("Custom toggle")
                            }
                        }
                        .toggleStyle(.button)
                    }
                }
            }
        }
        .navigationTitle("TSToggle.swift")
        .padding()
    }
}

struct TSToggle_Previews: PreviewProvider {
    static var previews: some View {
        TSToggle()
    }
}
