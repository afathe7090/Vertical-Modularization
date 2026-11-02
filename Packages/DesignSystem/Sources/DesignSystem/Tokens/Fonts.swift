import SwiftUI

public extension Font {
  static let displayBoldLarge = Font.system(size: 32, weight: .bold)
  static let titleBoldLarge = Font.system(size: 24, weight: .bold)
  static let titleSemiboldMedium = Font.system(size: 20, weight: .semibold)

  static let bodyRegularLarge = Font.system(size: 18, weight: .regular)
  static let bodyRegularMedium = Font.system(size: 16, weight: .regular)
  static let bodyRegularSmall = Font.system(size: 14, weight: .regular)
  static let bodyMediumSmall = Font.system(size: 14, weight: .medium)

  static let captionRegular = Font.system(size: 12, weight: .regular)
  static let captionMedium = Font.system(size: 12, weight: .medium)
}
