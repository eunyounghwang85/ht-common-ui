//
//  CardBGColor.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//


import SwiftUI

public enum CardBGColor: String, Sendable, CaseIterable {
    /*case primary = "#FF0000"*/
    
    case card_00 = "D94166"
    case card_01 = "C32148"
    case card_02 = "800517"
    
    case card_10 = "8194A8"
    case card_11 = "4385CF"
    case card_12 = "0F4C82"
    
    case card_20 = "E9A20A"
    case card_21 = "457351"
    case card_22 = "046E57"
    
    
    case card_30 = "BF4224"
    case card_31 = "8D8D8D"
    case card_32 = "555555"
    
    
    
    // Color 객체 반환 (SwiftUI용), # 붙여도되고 안붙여도됨
    public var color: Color {
        Color(self.rawValue)
    }
}



public extension CardBGColor {
   
    var primary: Color {
        return color
    }
  
    var secondary : Color {
        Color(secondaryStr)
    }
    var third : Color {
        Color(thirdStr)
    }
    
    var selected : Color {
        Color(selectedStr)
    }
}


extension CardBGColor {

    var secondaryStr : String {
    
        switch self {
        case .card_00:
            return "BF264B"
        case .card_01:
            return "951433"
        case .card_02:
            return "6D0B18"
        case .card_10:
            return "647A91"
        case .card_11:
            return "2E6CB3"
        case .card_12:
            return "093052"
        case .card_20:
            return "D98D12"
        case .card_21:
            return "32533A"
        case .card_22:
            return "0A5B4A"
        case .card_30:
            return "96341C"
        case .card_31:
            return "737373"
        case .card_32:
            return "3C3C3C"
        }
    }
    
    var thirdStr : String {
    
        switch self {
        case .card_00:
            return "951E3B"
        case .card_01:
            return "621225"
        case .card_02:
            return "4B0710"
        case .card_10:
            return "4F6073"
        case .card_11:
            return "23548A"
        case .card_12:
            return "092033"
        case .card_20:
            return "CF6C16"
        case .card_21:
            return "1F3324"
        case .card_22:
            return "092E27"
        case .card_30:
            return "6B2514"
        case .card_31:
            return "595959"
        case .card_32:
            return "282828"
        }
    }
    
    var selectedStr : String {
        // third 색상과 동일
        return thirdStr
    }
    
}
