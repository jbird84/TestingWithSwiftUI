//
//  ShowDifferentSizing.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/22/24.
//

import SwiftUI

struct ShowDifferentSizing: View {
    @State private var showingPageSheet = false
    @State private var showingFittedSheet = false
    
    var body: some View {
        VStack {
            Button("Show Page Detail View") {
                showingPageSheet.toggle()
            }
            .sheet(isPresented: $showingPageSheet, content: PageDetailView.init)
            .padding()
            Button("Show Fitted Detail View") {
                showingFittedSheet.toggle()
            }
            .sheet(isPresented: $showingFittedSheet, content: FittedDetailView.init)
            .padding()
        }
    }
}

#Preview {
    ShowDifferentSizing()
}
