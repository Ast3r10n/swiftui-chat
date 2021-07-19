//
//  MessageCell.swift
//  
//
//  Created by Andrea Sacerdoti on 22/02/21.
//

import SwiftUI

/// A view representing a chat message.
public struct MessageCell<Content: View>: View {

  // MARK: - Properties
  @State var isMessageSentByUser = true
  @State var userColor = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
  @State var receiverColor = Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
  @ViewBuilder let content: (() -> Content)

  public var body: some View {

    HStack(spacing: 0) {
      if isMessageSentByUser {
        Spacer()
          .frame(minWidth: 96)
      }

      content()
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .background(
          GeometryReader { geometry in
            MessageBubble()
              .transform(.init(scaleX: isMessageSentByUser ? -1 : 1, y: 1))
              .transform(.init(translationX: isMessageSentByUser ? geometry.size.width : 0, y: 0))
              .foregroundColor(isMessageSentByUser ? userColor : receiverColor)
              .shadow(color: .black, radius: 30)
              .edgesIgnoringSafeArea(.horizontal)
          }
        )
        .padding(.horizontal, 16)

      if !isMessageSentByUser {
        Spacer()
          .frame(minWidth: 96)
      }
    }
  }
}

// MARK: -

#if DEBUG
struct MessageCell_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      MessageCell(isMessageSentByUser: true) {
        Text("This is a test message.")
          .tracking(1.4)
          .font(.caption)
      }

      MessageCell(isMessageSentByUser: false) {
        Text("This is a test message.")
          .tracking(1.4)
          .font(.caption)
      }
    }
  }
}
#endif
