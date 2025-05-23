//
//  Theme.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//


import Foundation
import SwiftUI

// MARK: - @MainActor 싱글톤 ThemeManager (mutable)
@MainActor
public final class Theme {
    
    
    public static let shared = Theme()
    
    private init() {
        
    }
    
    public var tintPrimary: Color = Color("basicFF")
    public var colorAccent: Color = Color("primary500")

    public var bgPrimary: Color = Color("basic00")
    public var navBarTint: Color = Color("basicFF")
    public var tabbarBack: Color = Color("tabbar_back")
    public var tabBarAccent: Color = Color("primary500")
    public var tabBarTextAccent: Color = Color("basicFF")
    public var tabBarNormal: Color =  Color("neutralgray500")

    public var textPrimary: Color =  Color("basicFF")
    public var textSecondary: Color = Color("neutralgray400")

    public var cta1btnDefaultFill: Color =  Color("primary500")
    public var cta1btnDisableFill: Color = Color("neutralgray500")
    public var cta1btnSelectedFill: Color = Color("primary700")
    public var cta1btnDisableText: Color = Color("neutralgray600")
    
    
    //Font관련
    public var bold: Font = .notoSansBold()
    public var regular: Font = .notoSansRegular()
    
    
}

