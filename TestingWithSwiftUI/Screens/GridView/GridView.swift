//
//  GridView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/23/24.
//

import SwiftUI

struct GridView: View {
    let items = Array(1...10)
    
    var body: some View {
        Grid {
            GridRow {
                ForEach(items, id: \.self) { item in
                    Text("Item \(item)")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
        }
        .padding()
    }
}

#Preview {
    GridView()
}
