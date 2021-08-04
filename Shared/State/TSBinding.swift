//
//  TSBinding.swift
//  TSBinding
//
//  Created by Thomas Sillmann on 19.07.21.
//

import SwiftUI

struct TSBinding: View {
    @State private var useLargeFont = false
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(useLargeFont ? .largeTitle : .headline)
            FontButton(useLargeFont: $useLargeFont)
        }
        .navigationTitle("TSBinding.swift")
    }
}

struct FontButton: View {
    @Binding var useLargeFont: Bool
    
    var body: some View {
        Button("Change font") {
            useLargeFont.toggle()
        }
    }
}

struct TSBinding_Previews: PreviewProvider {
    static var previews: some View {
        TSBinding()
    }
}
