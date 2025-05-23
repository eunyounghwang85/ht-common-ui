//
//  TopNavBarStyleModifier.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import SwiftUI

// Top Navigation용
struct TopNavBarStyleModifier: ViewModifier {
    let font: Font
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(color)
    }
}

extension View {
    func topNavBarStyle(font: Font = .notoSansBold(18),
                        color: Color = Theme.shared.navBarTint) -> some View {
        self.modifier(TopNavBarStyleModifier(font: font, color: color))
    }
}
