//
//  MessagesStoreTests.swift
//
//
//  Created by Andrea Sacerdoti on 25/05/21.
//

import XCTest
@testable import SwiftUIChat

final class MessagesStoreTests: XCTestCase {
  func testInit() {
    let date = Date()
    let message = Message(id: "testId",
                          sender: "testSender",
                          receiver: "testReceiver",
                          content: "testContent",
                          timestamp: date)
    XCTAssertEqual(message.id, "testId")
    XCTAssertEqual(message.sender, "testSender")
    XCTAssertEqual(message.receiver, "testReceiver")
    XCTAssertEqual(message.content, "testContent")
    XCTAssertEqual(message.timestamp, date)

    let store = MessagesStore(user: "testUser", messages: [message])
    XCTAssertEqual(store.user, "testUser")
    XCTAssertEqual(store.messages.first, message)
  }
}
