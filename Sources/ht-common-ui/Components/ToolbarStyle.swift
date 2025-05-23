//
//  ToolbarStyle.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import SwiftUI


import Dependencies


public struct ToolbarStyle: Sendable, Equatable {
    public let font: Font
    public let color: Color
}


extension ToolbarStyle {
    public static var `defaultToolbar`: ToolbarStyle {
        get {
            MainActor.assumeIsolated {
                ToolbarStyle(
                    font: .notoSansBold(18),
                    color: Theme.shared.navBarTint
                )
            }
        }
    }
    
    public static var `defaultGNB`: ToolbarStyle {
        get {
            MainActor.assumeIsolated {
                ToolbarStyle(
                    font: .notoSansBold(18),
                    color: Theme.shared.navBarTint
                )
            }
        }
    }
    
    
}


