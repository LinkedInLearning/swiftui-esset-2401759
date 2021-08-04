//
//  SheetNavigationView.swift
//  SheetNavigationView
//
//  Created by Thomas Sillmann on 28.07.21.
//

import SwiftUI

struct SheetNavigationView: View {
    @State private var showSheet = false
    
    var body: some View {
        NavigationView {
            Form {
                Button("Show sheet") {
                    showSheet = true
                }
                .sheet(isPresented: $showSheet) {
                    SheetView(showSheet: $showSheet)
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

struct SheetView: View {
    @Binding var showSheet: Bool
    
    var body: some View {
        VStack {
            Text("Sheet")
                .font(.largeTitle)
            Divider()
            Button("Hide sheet") {
                showSheet = false
            }
        }
        .padding()
    }
}

struct SheetNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SheetNavigationView()
    }
}
