//
//  ChatView.swift
//  
//
//  Created by Andrea Sacerdoti on 22/02/21.
//

import SwiftUI

/// A view that allows to exchange messages with another user or company.
public struct ChatView<MessageContent: View>: View {

  // MARK: - Properties
  @ObservedObject public var store: MessagesStore
  public let messageContent: (Message) -> MessageContent

  // MARK: - Init
  public init(store: MessagesStore = .init(), messageContent: @escaping (Message) -> MessageContent) {
    self.store = store
    self.messageContent = messageContent
  }

  public var body: some View {
    ScrollView {
      VStack(spacing: 16) {
        ForEach(store.messages) { message in
          MessageCell(isMessageSentByUser: message.sender == store.user) {
            messageContent(message)
          }
        }
      }
    }
  }
}

#if DEBUG
struct ChatView_Previews: PreviewProvider {

  static var previews: some View {
    NavigationView {
      ChatView(store: .init(user: "User",
                            messages: [
                              .init(sender: "Sender", receiver: "User", content: "test content"),
                              .init(sender: "User", receiver: "Sender", content: "test content")
                            ])) { message in
        Text(message.content)
          .tracking(1.8)
          .font(.caption)
      }
    }
  }
}
#endif
