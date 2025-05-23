//
//  ContentViewTests.swift
//  ht-common-ui
//
//  Created by heyht on 5/23/25.
//


import XCTest
import SwiftUI
import ViewInspector  // 뷰 검사 도구 (옵션)
@testable import ht_common_ui



final class ContentViewTests: XCTestCase {
    @MainActor func testContentViewRenders() throws {
        let view = ContentView()
        // ViewInspector로 뷰 계층 검사 가능
        let text = try view.inspect().find(text: "Hello, World!")
        XCTAssertEqual(try text.string(), "Hello, World!")
    }
}
