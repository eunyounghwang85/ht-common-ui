//
//  File.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import Foundation
import SwiftUI
// MARK: - DI DependencyKey에 불변 Theme 주입
// 인증 관련 API
public struct ThemeStyle : Sendable, Equatable {
    
    public var tintPrimary: Color
    public var colorAccent: Color

    public var bgPrimary: Color
    public var navBarTint: Color
    public var tabbarBack: Color
    public var tabBarAccent: Color
    public var tabBarTextAccent: Color
    public var tabBarNormal: Color

    public var textPrimary: Color
    public var textSecondary: Color

    public var cta1btnDefaultFill: Color
    public var cta1btnDisableFill: Color
    public var cta1btnSelectedFill: Color
    public var cta1btnDisableText: Color
    
    
    //Font관련
    public var bold: Font
    public var regular: Font
    
 
}

extension ThemeStyle {
    public static var `default`: ThemeStyle {
        get {
            MainActor.assumeIsolated {
                ThemeStyle(tintPrimary: Theme.shared.tintPrimary,
                           colorAccent: Theme.shared.colorAccent,
                           bgPrimary: Theme.shared.bgPrimary,
                           navBarTint: Theme.shared.navBarTint,
                           tabbarBack: Theme.shared.tabbarBack,
                           tabBarAccent: Theme.shared.tabBarAccent,
                           tabBarTextAccent: Theme.shared.tabBarTextAccent,
                           tabBarNormal: Theme.shared.tabBarNormal,
                           textPrimary: Theme.shared.textPrimary,
                           textSecondary: Theme.shared.textSecondary,
                           cta1btnDefaultFill: Theme.shared.cta1btnDefaultFill,
                           cta1btnDisableFill: Theme.shared.cta1btnDisableFill,
                           cta1btnSelectedFill: Theme.shared.cta1btnSelectedFill,
                           cta1btnDisableText: Theme.shared.cta1btnDisableText,
                           bold: Theme.shared.bold,
                           regular:  Theme.shared.regular)
            }
        }
    }
}

