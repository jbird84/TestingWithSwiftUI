//
//  BubblesView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/30/24.
//

import SwiftUI

struct BubblesView: View {
    @Environment(\.iconColor) var iconColor

    var body: some View {
        Image(systemName: "bubbles.and.sparkles.fill")
            .foregroundStyle(iconColor)
            .font(.largeTitle)
    }
}

struct EnvValue: View {
    var body: some View {
        HStack {
            BubblesView()
                .environment(\.iconColor, .blue)

            BubblesView()
                .environment(\.iconColor, .red)
        }
    }
}

#Preview {
    EnvValue()
}

extension EnvironmentValues {
    @Entry var iconColor: Color = .red
}
