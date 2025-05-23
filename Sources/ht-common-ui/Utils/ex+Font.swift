//
//  File.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import SwiftUI

extension Font {

    
    public static func htcustom(_ notoSans:FontTheme, size: CGFloat = 18) -> Font {
        return notoSans.font(size: size)
    }
    
    public static func notoSansBlack(_ size: CGFloat = 18) -> Font {
        FontTheme.notoSansBlack.font(size: size)
    }
    
    public static func notoSansBold(_ size: CGFloat = 18) -> Font {
        FontTheme.notoSansBold.font(size: size)
    }
    
    public static func notoSansDemiLight(_ size: CGFloat = 18) -> Font {
        FontTheme.notoSansDemiLight.font(size: size)
    }
    
    public static func notoSansLight(_ size: CGFloat = 18) -> Font {
        FontTheme.notoSansLight.font(size: size)
    }
    
    public static func notoSansMedium(_ size: CGFloat = 18) -> Font {
        FontTheme.notoSansMedium.font(size: size)
    }
    
    public static func notoSansRegular(_ size: CGFloat = 18) -> Font {
        FontTheme.notoSansRegular.font(size: size)
    }
    
    public static func notoSansThin(_ size: CGFloat = 18) -> Font {
        FontTheme.notoSansThin.font(size: size)
    }
    
    public static func robotoLight(_ size: CGFloat = 18) -> Font {
        FontTheme.robotoLight.font(size: size)
    }
    
}
