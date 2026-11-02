//
//  Radius.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//

import SwiftUI

public enum Radius: CGFloat, Sendable {
  case small = 8
  case medium = 12
  case large = 16
  case extraLarge = 24
}

// MARK: - Rounded Rectangle Helper

public extension RoundedRectangle {
  init(radius: Radius, style: RoundedCornerStyle = .continuous) {
    self.init(cornerRadius: radius.rawValue, style: style)
  }
}
