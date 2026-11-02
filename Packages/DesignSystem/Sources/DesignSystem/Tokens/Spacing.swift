//
//  Spacing.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//
import SwiftUI

public enum Spacing: Float, Sendable {
  /// 4p.
  case x = 4
  case xs = 8
  case sm = 12
  case md = 16
  case lg = 24

  public var cgFloat: CGFloat {
    CGFloat(rawValue)
  }
}

public extension View {
  func padding(_ spacing: Spacing) -> some View {
    padding(spacing.cgFloat)
  }

  func padding(_ edges: Edge.Set, _ spacing: Spacing) -> some View {
    padding(edges, spacing.cgFloat)
  }
}
