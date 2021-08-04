//
//  TSPicker.swift
//  TSPicker
//
//  Created by Thomas Sillmann on 26.07.21.
//

import SwiftUI

struct TSPicker: View {
    private let devices = [
        "iPhone",
        "iPad",
        "Mac"
    ]
    
    @State private var selectedDevice: String = "iPhone"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Simple picker")
                        .font(.headline)
                    Picker("Devices", selection: $selectedDevice) {
                        Text("iPhone").tag("iPhone")
                        Text("iPad").tag("iPad")
                        Text("Mac").tag("Mac")
                    }
                }
                Divider()
                Group {
                    Text("Picker with custom style 01")
                        .font(.headline)
                    Picker("Devices", selection: $selectedDevice) {
                        Text("iPhone").tag("iPhone")
                        Text("iPad").tag("iPad")
                        Text("Mac").tag("Mac")
                    }
                    .pickerStyle(.segmented)
                }
                Divider()
                Group {
                    Text("Picker with custom style 02")
                        .font(.headline)
                    Picker("Devices", selection: $selectedDevice) {
                        Text("iPhone").tag("iPhone")
                        Text("iPad").tag("iPad")
                        Text("Mac").tag("Mac")
                    }
                    .pickerStyle(.menu)
                }
            }
        }
        .navigationTitle("TSPicker.swift")
        .padding()
    }
}

struct TSPicker_Previews: PreviewProvider {
    static var previews: some View {
        TSPicker()
    }
}
