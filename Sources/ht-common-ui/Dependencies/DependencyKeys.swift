//
//  DependencyKeys.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import Dependencies


public enum htDIKeys: Sendable {
   
    public enum ThemeKey: DependencyKey {
        public static let liveValue: ThemeStyle = ThemeStyle.default
    }
    
    public enum GNBKey : DependencyKey {
        public static let liveValue: ToolbarStyle = ToolbarStyle.defaultGNB
    }
    
    public enum ToolbarStyleKey: DependencyKey {
        public static let liveValue: ToolbarStyle = ToolbarStyle.defaultToolbar
    }
}
