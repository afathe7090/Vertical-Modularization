//
//  ErrorView.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//

import SwiftUI

public struct ErrorView: View {
  private let message: String

  public init(message: String) {
    self.message = message
  }

  public var body: some View {
    StatusView(
      image: .error,
      message: message,
      color: Color.error
    )
  }
}

#Preview("Error View") {
  ErrorView(
    message: "Something went wrong. Please try again."
  )
  .padding(.md)
  .background(Color.backgroundPrimary)
}
