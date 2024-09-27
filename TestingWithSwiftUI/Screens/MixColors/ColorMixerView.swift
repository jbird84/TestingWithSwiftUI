//
//  ColorMixerView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/27/24.
//

import SwiftUI

struct ColorMixerView: View {
    var body: some View {
        VStack {
            Color.purple.mix(with: .brown, by: 0.3)
                .frame(height: 100)
            
            Color.purple.mix(with: .brown, by: 0.5)
                .frame(height: 100)
            
            Color.purple.mix(with: .brown, by: 0.8)
                .frame(height: 100)
        }
    }
}

#Preview {
    ColorMixerView()
}
