//
//  ToolbarStyleModifier.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//
import SwiftUI
import Dependencies



public struct ToolbarStyleModifier: ViewModifier {
    let font: Font
    let foregroundColor: Color

    public func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(foregroundColor)
    }
}


extension View {
    @ViewBuilder
    public func toolbarItemStyle(
        font: Font? = nil,
        color: Color? = nil
    ) -> some View {
        
        
        @Dependency(\.toolbarStyle) var defaultStyle

        let effectiveFont = font ?? defaultStyle.font
        let effectiveColor = color ?? defaultStyle.color

        self.modifier(ToolbarStyleModifier(font: effectiveFont, foregroundColor: effectiveColor))
    }
}

