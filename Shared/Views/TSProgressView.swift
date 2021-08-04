//
//  TSProgressView.swift
//  TS SwiftUI Catalog
//
//  Created by Thomas Sillmann on 09.07.21.
//

import SwiftUI

struct TSProgressView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Group {
                    Text("Simple indeterminate progress view")
                        .font(.headline)
                    ProgressView()
                }
                Divider()
                Group {
                    Text("Simple determinate progress view")
                        .font(.headline)
                    ProgressView(value: 0.5)
                }
                Divider()
                Group {
                    Text("Progress view with custom range")
                        .font(.headline)
                    ProgressView(value: 10, total: 100)
                }
                Divider()
                Group {
                    Text("Progress view with label")
                        .font(.headline)
                    ProgressView("Loading ...")
                }
                Divider()
                Group {
                    Text("Progress view with custom label")
                        .font(.headline)
                    ProgressView {
                        Label("Loading ...", systemImage: "internaldrive")
                    }
                }
            }
        }
        .navigationTitle("TSProgressView.swift")
        .padding()
    }
}

struct TSProgressView_Previews: PreviewProvider {
    static var previews: some View {
        TSProgressView()
    }
}
