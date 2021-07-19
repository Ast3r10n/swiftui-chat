//
//  ChatViewTests.swift
//  
//
//  Created by Andrea Sacerdoti on 26/05/21.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import SwiftUIChat

final class ChatViewTests: XCTestCase {
  func testChatView() throws {
    let referenceSize = CGSize(width: 200, height: 400)
    let sut = ChatView_Previews.previews
      .frame(width: referenceSize.width, height: referenceSize.height)

    assertSnapshot(matching: sut, as: .image)
  }
}
