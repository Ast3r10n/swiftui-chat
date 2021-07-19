//
//  MessageCellTests.swift
//  
//
//  Created by Andrea Sacerdoti on 26/05/21.
//

import Foundation

import XCTest
import SnapshotTesting
import SwiftUI
@testable import SwiftUIChat

final class MessageCellTests: XCTestCase {
  func testMessageCell() throws {
    let referenceSize = CGSize(width: 200, height: 400)
    let sut = MessageCell_Previews.previews
      .frame(width: referenceSize.width, height: referenceSize.height)

    assertSnapshot(matching: sut, as: .image)
  }
}
