//
//  TSTextField.swift
//  TSTextField
//
//  Created by Thomas Sillmann on 26.07.21.
//

import SwiftUI

struct TSTextField: View {
    @State private var text = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Simple text field")
                        .font(.headline)
                    TextField("Username", text: $text)
                }
                Divider()
                Group {
                    Text("Text field with custom style")
                        .font(.headline)
                    TextField("Username", text: $text)
                        .textFieldStyle(.roundedBorder)
                }
                Divider()
                Group {
                    Text("Secure field with custom style")
                        .font(.headline)
                    SecureField("Username", text: $text)
                        .textFieldStyle(.roundedBorder)
                }
            }
        }
        .navigationTitle("TSTextField.swift")
        .padding()
    }
}

struct TSTextField_Previews: PreviewProvider {
    static var previews: some View {
        TSTextField()
    }
}
