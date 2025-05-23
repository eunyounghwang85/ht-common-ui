//
//  ToolbarStyle.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import SwiftUI


public struct GNBStyle: Sendable, Equatable {
    public let font: Font
    public let color: Color
}


extension GNBStyle {
    public static var `default`: GNBStyle {
        get {
            MainActor.assumeIsolated {
                GNBStyle(
                    font: .notoSansBold(18),
                    color: Theme.shared.navBarTint
                )
            }
        }
    }
}

