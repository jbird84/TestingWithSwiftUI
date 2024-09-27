//
//  ScrollToTop.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/26/24.
//

import SwiftUI

struct ScrollToTop: View {
    
    let samplePhotos: [String] = ["pro-1", "pro-2", "pro-3", "pro-4", "pro-5", "pro-6", "pro-7", "pro-8", "pro-9", "pro-10"]
    
    @State private var showScrollToTop = false
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(samplePhotos.indices, id: \.self) { index in
                    let photo = samplePhotos[index]
                    Image(photo)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 180)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
        }
        .padding(.horizontal)
        .overlay(alignment: .bottom) {
            if showScrollToTop {
                Button("Scroll to top") {
                    
                }
                .controlSize(.extraLarge)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
        }
        .onScrollGeometryChange(for: Bool.self) { geometry in
            geometry.contentOffset.y < geometry.contentInsets.bottom + 200
            
        } action: { oldValue, newValue in
            withAnimation {
                showScrollToTop = !newValue
            }
        }

    }
}

#Preview {
    ScrollToTop()
}
