//
//  TSStacks.swift
//  TS SwiftUI Catalog (iOS)
//
//  Created by Thomas Sillmann on 12.07.21.
//

import SwiftUI

struct TSStacks: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("VStack")
                        .font(.headline)
                    VStack(spacing: 10) {
                        Text("Swift is amazing!")
                        Image(systemName: "swift")
                    }
                }
                Divider()
                Group {
                    VStack {
                        Text("HStack")
                            .font(.headline)
                        HStack(spacing: 10) {
                            Text("Swift is amazing!")
                            Image(systemName: "swift")
                        }
                    }
                }
                Divider()
                Group {
                    VStack {
                        Text("ZStack")
                            .font(.headline)
                        ZStack {
                            Image(systemName: "swift")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.orange)
                            Text("Amazing!")
                                .font(.largeTitle)
                        }
                    }
                }
            }
        }
        .navigationTitle("TSStacks.swift")
        .padding()
    }
}

struct TSStacks_Previews: PreviewProvider {
    static var previews: some View {
        TSStacks()
    }
}
