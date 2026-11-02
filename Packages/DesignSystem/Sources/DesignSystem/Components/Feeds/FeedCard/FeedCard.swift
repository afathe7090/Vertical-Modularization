//
//  FeedCard.swift
//  DesignSystem
//
//  Created by Ahmed Fathy on 03/09/2026.
//

import SwiftUI

// MARK: - Feed Card

public struct FeedCard: View {
  // FeedItem, FeedCardItem, Feed/CardModel.
  private let viewModel: FeedCardViewModel
  private let onLike: (() -> Void)?
  private let onDislike: (() -> Void)?

  public init(
    viewModel: FeedCardViewModel,
    onLike: (() -> Void)? = nil,
    onDislike: (() -> Void)? = nil
  ) {
    self.viewModel = viewModel
    self.onLike = onLike
    self.onDislike = onDislike
  }

  public var body: some View {
    VStack(alignment: .leading, spacing: Spacing.md.cgFloat) {
      content

      Divider()

      reactions
    }
    .padding(.md)
    .background(Color.surfacePrimary)
    .clipShape(cardShape)
    .overlay {
      cardShape
        .stroke(Color.borderPrimary.opacity(0.4), lineWidth: 1)
    }
  }
}

// MARK: - Feed Content

private extension FeedCard {
  var content: some View {
    VStack(alignment: .leading, spacing: Spacing.xs.cgFloat) {
      Text(viewModel.title)
        .font(.titleSemiboldMedium)
        .foregroundStyle(Color.primaryText)

      Text(viewModel.body)
        .font(.bodyRegularMedium)
        .foregroundStyle(Color.secondaryText)
        .fixedSize(horizontal: false, vertical: true)
    }
  }
}

// MARK: - Feed Reactions

private extension FeedCard {
  var reactions: some View {
    HStack(spacing: Spacing.sm.cgFloat) {
      ReactionButton(
        image: .like,
        count: viewModel.likesCount,
        color: Color.like,
        action: onLike
      )

      ReactionButton(
        image: .dislike,
        count: viewModel.dislikesCount,
        color: Color.dislike,
        action: onDislike
      )

      Spacer(minLength: Spacing.sm.cgFloat)

      ViewCount(count: viewModel.viewsCount)
    }
  }
}

// MARK: - Feed Shape

private extension FeedCard {
  var cardShape: RoundedRectangle {
    RoundedRectangle(radius: .large)
  }
}

// MARK: - Reaction Button

private struct ReactionButton: View {
  let image: SystemImage
  let count: Int
  let color: Color
  let action: (() -> Void)?

  var body: some View {
    Button {
      action?()
    } label: {
      HStack(spacing: Spacing.x.cgFloat) {
        Image(systemImage: image)
          .font(.bodyMediumSmall)

        Text(count.formatted())
          .font(.captionMedium)
      }
      .foregroundStyle(color)
      .padding(.vertical, .xs)
      .padding(.horizontal, .sm)
      .background(color.opacity(0.1))
      .clipShape(Capsule())
    }
    .buttonStyle(.plain)
  }
}

// MARK: - View Count

private struct ViewCount: View {
  let count: Int

  var body: some View {
    HStack(spacing: Spacing.x.cgFloat) {
      Image(systemImage: .views)
        .font(.bodyMediumSmall)

      Text(count.formatted())
        .font(.captionMedium)
    }
    .foregroundStyle(Color.secondaryText)
  }
}

#Preview("Feed Card") {
  FeedCard(
    viewModel: FeedCardViewModel(
      title: "Feed Title",
      body: "This is a reusable feed card using the design system.",
      likesCount: 40,
      dislikesCount: 6,
      viewsCount: 800
    ),
    onLike: {
      print("Like")
    },
    onDislike: {
      print("Dislike")
    }
  )
  .padding(.md)
  .background(Color.backgroundGrouped)
}
