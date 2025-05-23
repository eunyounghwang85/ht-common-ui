//
//  File.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import SwiftUI
import UIKit


extension UIColor {
    
    public convenience init(color: Color) {
        self.init(color)  // iOS 14+부터 가능
    }
}

// Color extension to initialize with hex string
extension Color {
    

    public init(uiColor: UIColor) {
        self.init(uiColor)  // iOS 14+ 가능
    }
    
    public init(hex: String) {
        
        // 여기서 # 문자를 제거
        let thex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: thex).scanHexInt64(&int)
        
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255,
                            (int >> 8) * 17,
                            (int >> 4 & 0xF) * 17,
                            (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255,
                            int >> 16,
                            int >> 8 & 0xFF,
                            int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24,
                            int >> 16 & 0xFF,
                            int >> 8 & 0xFF,
                            int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
