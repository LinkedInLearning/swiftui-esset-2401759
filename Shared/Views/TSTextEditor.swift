//
//  TSTextEditor.swift
//  TSTextEditor
//
//  Created by Thomas Sillmann on 26.07.21.
//

import SwiftUI

struct TSTextEditor: View {
    @State private var text = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Simple text editor")
                        .font(.headline)
                    TextEditor(text: $text)
                        .frame(minHeight: 100)
                }
                Divider()
                Group {
                    Text("Formatted text editor")
                        .font(.headline)
                    TextEditor(text: $text)
                        .frame(minHeight: 100)
                        .foregroundColor(.blue)
                        .lineSpacing(10)
                        .multilineTextAlignment(.center)
                        .border(Color.gray)
                        .padding()
                }
            }
        }
        .navigationTitle("TSTextEditor.swift")
        .padding()
    }
}

struct TSTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        TSTextEditor()
    }
}
