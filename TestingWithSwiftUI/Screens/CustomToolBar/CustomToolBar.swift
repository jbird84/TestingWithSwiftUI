//
//  CustomToolBar.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 10/1/24.
//

import SwiftUI


struct CustomToolbarView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, SwiftUI!")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                        }) {
                            Image(systemName: "star")
                                .foregroundColor(.blue)
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Custom Title")
                            .font(.headline)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                        }) {
                            Image(systemName: "ellipsis")
                        }
                    }
                }
        }
    }
}

#Preview {
    CustomToolbarView()
}
