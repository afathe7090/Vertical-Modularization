//
//  FeedCardViewModel.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//
import Foundation

public struct FeedCardViewModel: Sendable, Equatable {
  public let title: String
  public let body: String
  public let likesCount: Int
  public let dislikesCount: Int
  public let viewsCount: Int

  public init(
    title: String,
    body: String,
    likesCount: Int,
    dislikesCount: Int,
    viewsCount: Int
  ) {
    self.title = title
    self.body = body
    self.likesCount = likesCount
    self.dislikesCount = dislikesCount
    self.viewsCount = viewsCount
  }
}
