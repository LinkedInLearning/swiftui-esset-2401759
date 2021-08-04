//
//  ContentView.swift
//  Shared
//
//  Created by Thomas Sillmann on 08.07.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewsNavigationView()
                .tabItem {
                    Label("Views", systemImage: "photo")
                }
            ViewLayoutNavigationView()
                .tabItem {
                    Label("View Layout", systemImage: "square.stack.3d.up")
                }
            SheetNavigationView()
                .tabItem {
                    Label("Navigation", systemImage: "doc")
                }
            StateNavigationView()
                .tabItem {
                    Label("State", systemImage: "gauge")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
