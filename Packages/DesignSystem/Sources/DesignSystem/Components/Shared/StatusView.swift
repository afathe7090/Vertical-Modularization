//
//  StatusView.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//
import SwiftUI

struct StatusView: View {
  let image: SystemImage
  let message: String
  let color: Color

  var body: some View {
    HStack(alignment: .top, spacing: Spacing.sm.cgFloat) {
      Image(systemImage: image)
        .font(.bodyRegularLarge)
        .foregroundStyle(color)

      Text(message)
        .font(.bodyRegularSmall)
        .foregroundStyle(Color.primaryText)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    .padding(.md)
    .background(color.opacity(0.1))
    .clipShape(RoundedRectangle(radius: .medium))
    .overlay {
      RoundedRectangle(radius: .medium)
        .stroke(color.opacity(0.25), lineWidth: 1)
    }
  }
}
