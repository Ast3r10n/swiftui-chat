//
//  MessagesStore.swift
//  
//
//  Created by Andrea Sacerdoti on 22/02/21.
//

import Foundation
import Combine

/// A store used for a chat thread.
public class MessagesStore: ObservableObject {

  // MARK: - Properties
  @Published public var user: String
  @Published public var messages: [Message]

  // MARK: - Init

  /// Creates a new store for the given user.
  /// - Parameters:
  ///   - user: The user to assign to the store.
  ///   - messages: The initial list of messages.
  public init(user: String = "", messages: [Message] = []) {
    self.user = user
    self.messages = messages
  }
}
