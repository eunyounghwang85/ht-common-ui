//
//  BottomToolbarStyleModifier.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import SwiftUI
// Bottom Bar용
struct BottomToolbarStyleModifier: ViewModifier {
    let font: Font
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(color)
    }
}

extension View {
    func bottomToolbarStyle(font: Font = .notoSansRegular(14),
                            color: Color = Theme.shared.tabBarTextAccent) -> some View {
        self.modifier(BottomToolbarStyleModifier(font: font, color: color))
    }
}
