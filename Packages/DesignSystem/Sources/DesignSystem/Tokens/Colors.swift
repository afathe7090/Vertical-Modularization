import SwiftUI

public extension Color {
  static let backgroundPrimary = Color(uiColor: .systemBackground)
  static let backgroundSecondary = Color(uiColor: .secondarySystemBackground)
  static let backgroundGrouped = Color(uiColor: .systemGroupedBackground)
  static let surfacePrimary = Color(uiColor: .secondarySystemGroupedBackground)

  static let primaryText = Color(uiColor: .label)
  static let secondaryText = Color(uiColor: .secondaryLabel)
  static let tertiaryText = Color(uiColor: .tertiaryLabel)

  static let brandPrimary = Color.accentColor
  static let brandSecondary = Color.gray

  static let borderPrimary = Color(uiColor: .separator)

  static let success = Color.green
  static let warning = Color.orange
  static let error = Color.red

  static let like = Color.green
  static let dislike = Color.red
}
