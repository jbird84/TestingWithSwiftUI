//
//  FittedDetailView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/22/24.
//

import SwiftUI

import SwiftUI


struct FittedDetailView: View {
    var body: some View {
        Text("Fitted Detail View")
            .font(.largeTitle)
            .presentationSizing(.fitted)
    }
}


#Preview {
    FittedDetailView()
}
