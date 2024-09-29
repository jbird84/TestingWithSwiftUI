//
//  TextRenderingView.swift
//  TestingWithSwiftUI
//
//  Created by Kinney Kare on 9/27/24.
//

import SwiftUI


struct CustomTextRenderer: TextRenderer {
    
    func draw(layout: Text.Layout, in context: inout GraphicsContext) {
        
        for line in layout {
            for (index, slice) in line.enumerated() {
                context.opacity = (index % 2 == 0) ? 0.4 : 1.0
                context.translateBy(x: 0, y: index % 2 != 0 ? -15 : 15)
                
                context.draw(slice)
            }
        }
    }
}

struct TextAnimationDemo: View {
    var body: some View {
        Text("What's New in SwiftUI")
            .font(.system(size: 100))
            .textRenderer(CustomTextRenderer())
    }
}


#Preview {
    TextAnimationDemo()
}
