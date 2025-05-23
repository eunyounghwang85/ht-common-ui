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
        public static let liveValue: GNBStyle = GNBStyle.default
    }
}
