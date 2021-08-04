//
//  TSScrollView.swift
//  TS SwiftUI Catalog (iOS)
//
//  Created by Thomas Sillmann on 15.07.21.
//

import SwiftUI

struct TSScrollView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<100) {
                    Text("Row \($0)")
                }
            }
            .frame(maxWidth: .infinity)
        }
        .navigationTitle("TSScrollView.swift")
    }
}

struct TSScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TSScrollView()
    }
}
