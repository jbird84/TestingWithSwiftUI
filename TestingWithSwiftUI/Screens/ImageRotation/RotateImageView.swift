//
//  RotateImageView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/25/24.
//

import SwiftUI

struct RotateImageView: View {
    @State var animate: Bool = false
    var body: some View {
        Image(systemName: "ellipsis.message")
                    .font(.system(size: 300))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.purple, .gray)
                    .symbolEffect(.rotate, value: animate)
                    .onTapGesture {
                        animate.toggle()
                    }
    }
}

#Preview {
    RotateImageView()
}
