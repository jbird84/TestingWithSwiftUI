//
//  ContentView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        Button("Show Detail View") {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet, content: PageDetailView.init)
        .padding()
    }
}

#Preview {
    ContentView()
}
