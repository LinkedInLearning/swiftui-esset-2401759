//
//  TSProperty.swift
//  TSProperty
//
//  Created by Thomas Sillmann on 19.07.21.
//

import SwiftUI

struct TSProperty: View {
    var body: some View {
        LargeTitleView(title: "Hello SwiftUI!")
            .navigationTitle("TSProperty.swift")
    }
}

struct LargeTitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
}

struct TSProperty_Previews: PreviewProvider {
    static var previews: some View {
        TSProperty()
    }
}
