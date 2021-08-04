//
//  ViewsNavigationView.swift
//  TS SwiftUI Catalog
//
//  Created by Thomas Sillmann on 08.07.21.
//

import SwiftUI

struct ViewsNavigationView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Button", destination: TSButton())
                NavigationLink("Toggle", destination: TSToggle())
                NavigationLink("TextField and SecureField", destination: TSTextField())
                NavigationLink("TextEditor", destination: TSTextEditor())
                NavigationLink("Picker", destination: TSPicker())
                NavigationLink("ProgressView", destination: TSProgressView())
                NavigationLink("Label", destination: TSLabel())
            }
            .navigationTitle("Views")
        }
    }
}

struct ViewsNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ViewsNavigationView()
    }
}
