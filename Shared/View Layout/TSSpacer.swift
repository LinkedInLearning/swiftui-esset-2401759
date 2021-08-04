//
//  TSSpacer.swift
//  TSSpacer
//
//  Created by Thomas Sillmann on 15.07.21.
//

import SwiftUI

struct TSSpacer: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Large title")
                    .font(.largeTitle)
                Spacer()
                    .frame(height: 50)
                Divider()
                Spacer()
                    .frame(height: 50)
                Text("Headline")
                    .font(.headline)
            }
        }
        .navigationTitle("TSSpacer.swift")
        .padding()
    }
}

struct TSSpacer_Previews: PreviewProvider {
    static var previews: some View {
        TSSpacer()
    }
}
