//
//  FloatingTabBarView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/24/24.
//
import SwiftUI

struct FloatingTabBarView: View {
    @State var customization = TabViewCustomization()
       
       var body: some View {
TabView {
            Tab("Home", systemImage: "house.fill") {
                
            }
            
            Tab("Bookmark", systemImage: "bookmark.circle.fill") {
                
            }
            
            Tab("Videos", systemImage: "video.circle.fill") {
                
            }
            
            Tab("Profile", systemImage: "person.crop.circle") {
                
            }
            
            Tab("Settings", systemImage: "gear") {
                
            }
            
        }
        .tint(.yellow)
        .tabViewStyle(.sidebarAdaptable)
        .tabViewCustomization($customization)
}
}

#Preview {
    FloatingTabBarView(customization: TabViewCustomization())
}
