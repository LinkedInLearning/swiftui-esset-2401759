//
//  TSLabel.swift
//  TS SwiftUI Catalog
//
//  Created by Thomas Sillmann on 09.07.21.
//

import SwiftUI

struct TSLabel: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Label with system image")
                        .font(.headline)
                    Label("Swift is amazing!", systemImage: "swift")
                }
                Divider()
                Group {
                    Text("Label with custom image")
                        .font(.headline)
                    Label("Sillmann approved!", image: "Approved")
                }
            }
        }
        .navigationTitle("TSLabel.swift")
        .padding()
    }
}

struct TSLabel_Previews: PreviewProvider {
    static var previews: some View {
        TSLabel()
    }
}
