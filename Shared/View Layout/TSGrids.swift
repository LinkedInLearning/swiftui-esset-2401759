//
//  TSGrids.swift
//  TS SwiftUI Catalog (iOS)
//
//  Created by Thomas Sillmann on 15.07.21.
//

import SwiftUI

struct TSGrids: View {
    private let columns = [
        GridItem(.adaptive(minimum: 200))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(1..<9) { value in
                    Image("Vacation0\(value)")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .navigationTitle("TSGrids.swift")
    }
}

struct TSGrids_Previews: PreviewProvider {
    static var previews: some View {
        TSGrids()
    }
}
