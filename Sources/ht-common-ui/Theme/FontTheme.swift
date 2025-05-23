//
//  FontTheme.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//


import SwiftUI
import Foundation


import SwiftUI

public enum FontTheme: String, Sendable, CaseIterable {
    
    
    case notoSansBlack     = "NotoSansCJKkr-Black"
    case notoSansBold      = "NotoSansCJKkr-Bold"
    case notoSansDemiLight = "NotoSansCJKkr-DemiLight"
    case notoSansLight     = "NotoSansCJKkr-Light"
    case notoSansMedium    = "NotoSansCJKkr-Medium"
    case notoSansRegular   = "NotoSansCJKkr-Regular"
    case notoSansThin      = "NotoSansCJKkr-Thin"
    case robotoLight       = "Roboto-Light"

    public func font(size: CGFloat) -> Font {
        .custom(self.rawValue, size: size)
    }
    
   
}


