//
//  Theme.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//


import Foundation
import SwiftUI

public struct Theme: Sendable, Equatable {
    public let fontName: String
    public let fontSize: CGFloat
    public let tintColor: Color
    public let backgroundColor: Color
    
    public static let `default` = Theme(
        fontName: "Pretendard-Regular",
        fontSize: 16,
        tintColor: .blue,
        backgroundColor: .white
    )
}
