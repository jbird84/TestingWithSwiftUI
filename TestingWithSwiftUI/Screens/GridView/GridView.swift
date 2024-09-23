//
//  GridView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/23/24.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid {
            ForEach(0..<100) { index in
                Text("Item \(index)")
                    .gridCellColumns(1)
            }
        }
      //  .gridStyle(
      //     // StaggeredGridStyle(tracks: 3, spacing: 16)
     //   )
    }
}

#Preview {
    GridView()
}
