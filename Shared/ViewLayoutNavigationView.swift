//
//  ViewLayoutNavigationView.swift
//  ViewLayoutNavigationView
//
//  Created by Thomas Sillmann on 26.07.21.
//

import SwiftUI

struct ViewLayoutNavigationView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Stacks", destination: TSStacks())
                NavigationLink("ForEach", destination: TSForEach())
                NavigationLink("ScrollView", destination: TSScrollView())
                NavigationLink("List", destination: TSList())
                NavigationLink("Grids", destination: TSGrids())
                NavigationLink("Form", destination: TSForm())
                NavigationLink("Spacer", destination: TSSpacer())
            }
            .navigationTitle("View Layout")
        }
    }
}

struct ViewLayoutNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutNavigationView()
    }
}
