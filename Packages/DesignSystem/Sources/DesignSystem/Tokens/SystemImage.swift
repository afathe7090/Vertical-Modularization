//
//  SystemImage.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//

import SwiftUI

public enum SystemImage: String, Sendable {
  case like = "hand.thumbsup"
  case dislike = "hand.thumbsdown"
  case views = "eye"

  case error = "xmark.octagon.fill"
  case warning = "exclamationmark.triangle.fill"
  case info = "info.circle.fill"
  case success = "checkmark.circle.fill"

  case close = "xmark"
  case add = "plus"
  case remove = "minus"

  case chevronRight = "chevron.right"
  case chevronLeft = "chevron.left"
}

// MARK: - Image Helper

public extension Image {
  init(systemImage: SystemImage) {
    self.init(systemName: systemImage.rawValue)
  }
}
