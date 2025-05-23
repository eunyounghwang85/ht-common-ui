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
    
    var GNBStyle: ToolbarStyle {
        get { self[htDIKeys.GNBKey.self] }
        set { self[htDIKeys.GNBKey.self] = newValue }
    }
    
    var toolbarStyle: ToolbarStyle {
        get { self[htDIKeys.ToolbarStyleKey.self] }
        set { self[htDIKeys.ToolbarStyleKey.self] = newValue }
    }
}
