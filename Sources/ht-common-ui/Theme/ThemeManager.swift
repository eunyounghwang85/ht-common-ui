//
//  ThemeManager.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import SwiftUI
import Foundation




// MARK: - @MainActor 싱글톤 ThemeManager (mutable)
@MainActor
public final class ThemeManager: ObservableObject {
    public static let shared = ThemeManager()
    
    @Published public private(set) var currentTheme: Theme
    
    private init() {
        self.currentTheme = .default
    }
    
    public func updateTheme(_ theme: Theme) {
        currentTheme = theme
    }
}
