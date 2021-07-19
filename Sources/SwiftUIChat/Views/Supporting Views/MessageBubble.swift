//
//  MessageBubble.swift
//  
//
//  Created by Andrea Sacerdoti on 19/07/21.
//

import SwiftUI

struct MessageBubble: Shape {
  func path(in rect: CGRect) -> Path {

    var path = Path()
    path.move(to: CGPoint(x: 22, y: rect.height))
    path.addLine(to: CGPoint(x: rect.width - 17, y: rect.height))
    path.addCurve(to: CGPoint(x: rect.width, y: rect.height - 17),
                  control1: CGPoint(x: rect.width - 7, y: rect.height),
                  control2: .init(x: rect.width, y: rect.height - 7))
    path.addLine(to: .init(x: rect.width, y: 17))
    path.addCurve(to: .init(x: rect.width - 17, y: 0),
                  control1: .init(x: rect.width, y: 7),
                  control2: .init(x: rect.width - 7, y: 0))
    path.addLine(to: .init(x: 21, y: 0))
    path.addCurve(to: .init(x: 4, y: 17),
                  control1: .init(x: 11, y: 0),
                  control2: .init(x: 4, y: 7))
    path.addLine(to: .init(x: 4, y: rect.height - 11))
    path.addCurve(to: .init(x: 0, y: rect.height),
                  control1: .init(x: 4, y: rect.height),
                  control2: .init(x: 0, y: rect.height))
    path.addLine(to: .init(x: 0, y: rect.height))
    path.addCurve(to: .init(x: 11, y: rect.height - 4),
                  control1: .init(x: 4, y: rect.height),
                  control2: .init(x: 8, y: rect.height))
    path.addCurve(to: .init(x: 22, y: rect.height),
                  control1: .init(x: 16, y: rect.height),
                  control2: .init(x: 19, y: rect.height))
    path.closeSubpath()
    return path
  }
}

#if DEBUG && !TEST
struct MessageBubbleView_Previews: PreviewProvider {
  static var previews: some View {
    MessageBubble()
      .frame(width: 200, height: 80)
  }
}
#endif
