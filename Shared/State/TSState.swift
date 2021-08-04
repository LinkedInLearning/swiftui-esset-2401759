//
//  TSState.swift
//  TSState
//
//  Created by Thomas Sillmann on 19.07.21.
//

import SwiftUI

struct TSState: View {
    @State private var useLargeFont = false
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(useLargeFont ? .largeTitle : .headline)
            Button("Change font") {
                useLargeFont.toggle()
            }
        }
        .navigationTitle("TSState.swift")
    }
}

struct TSState_Previews: PreviewProvider {
    static var previews: some View {
        TSState()
    }
}
