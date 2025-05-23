//
//  File.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//

import Foundation
import Dependencies

// MARK: - DI DependencyKey에 불변 Theme 주입

enum ThemeDependencyKey: DependencyKey {
    static let liveValue: Theme = .default
}

extension DependencyValues {
    var theme: Theme {
        get { self[ThemeDependencyKey.self] }
        set { self[ThemeDependencyKey.self] = newValue }
    }
}

