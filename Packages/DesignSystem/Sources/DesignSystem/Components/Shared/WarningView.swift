//
//  WarningView.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//

import SwiftUI

public struct WarningView: View {
  private let message: String

  public init(message: String) {
    self.message = message
  }

  public var body: some View {
    StatusView(
      image: .warning,
      message: message,
      color: Color.warning
    )
  }
}

#Preview("Warning View") {
  WarningView(
    message: "Some information might be outdated."
  )
  .padding(.md)
  .background(Color.backgroundPrimary)
}
