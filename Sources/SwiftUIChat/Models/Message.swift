//
//  Message.swift
//  
//
//  Created by Andrea Sacerdoti on 22/02/21.
//

import Foundation

/// A chat message object.
public struct Message: Identifiable {

  // MARK: - Properties
  public var id: String
  public var sender, receiver: String
  public var content: String
  public var timestamp: Date

  // MARK: - Init
  public init(
    id: String = UUID().uuidString,
    sender: String,
    receiver: String,
    content: String,
    timestamp: Date = Date()) {

    self.id = id
    self.sender = sender
    self.receiver = receiver
    self.content = content
    self.timestamp = timestamp
  }
}

// MARK: -
extension Message: Equatable {
}
