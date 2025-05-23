//
//  ContentView.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//


import SwiftUI
import Dependencies
import ht_common_ui

struct ContentView: View {
    @Dependency(\.theme) var theme  // 동기적 불변 테마
    
    @StateObject private var themeManager = ThemeManager.shared // mutable UI 상태
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.custom(theme.fontName, size: theme.fontSize))
                .foregroundColor(theme.tintColor)
                .padding()
                .background(theme.backgroundColor)
            
            Button("Switch Theme") {
                Task { @MainActor in
                    let newTheme = Theme(
                        fontName: "Pretendard-Bold",
                        fontSize: 18,
                        tintColor: .red,
                        backgroundColor: .black
                    )
                    themeManager.updateTheme(newTheme)
                }
            }
        }
        .onReceive(themeManager.$currentTheme) { newTheme in
            // 필요하면 여기에 반영
            print("Theme changed to: \(newTheme)")
        }
    }
}
