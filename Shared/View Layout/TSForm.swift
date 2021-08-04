//
//  TSForm.swift
//  TSForm
//
//  Created by Thomas Sillmann on 15.07.21.
//

import SwiftUI

struct TSForm: View {
    @State private var someSetting = true
    
    var body: some View {
        Form {
            Text("Some text")
            Section(content: {
                Button("Some action") {
                    print("Some action")
                }
                Toggle("Some setting", isOn: $someSetting)
            }, header: {
                Text("Actions")
            })
        }
        .navigationTitle("TSForm.swift")
    }
}

struct TSForm_Previews: PreviewProvider {
    static var previews: some View {
        TSForm()
    }
}
