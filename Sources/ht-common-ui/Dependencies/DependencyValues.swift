//
//  DependencyValues.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import Dependencies

public extension DependencyValues {
    var theme: ThemeStyle {
        get { self[htDIKeys.ThemeKey.self] }
        set { self[htDIKeys.ThemeKey.self] = newValue }
    }
    
    var GNB: GNBStyle {
        get { self[htDIKeys.GNBKey.self] }
        set { self[htDIKeys.GNBKey.self] = newValue }
    }
}
