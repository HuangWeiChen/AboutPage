import SwiftUI

struct HighlightCardView: View {
    let value: String
    let label: String
    let systemImage: String
    let accentColor: Color

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: systemImage)
                .font(.headline)
                .foregroundStyle(accentColor)

            Text(value)
                .font(.headline.weight(.bold))
                .foregroundStyle(.white)

            Text(label)
                .font(.caption2)
                .foregroundStyle(.white.opacity(0.6))
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(.white.opacity(0.07), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .stroke(.white.opacity(0.09), lineWidth: 1)
        }
        .accessibilityElement(children: .combine)
    }
}

struct SectionTitleView: View {
    let eyebrow: String
    let title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(eyebrow)
                .font(.caption2.weight(.bold))
                .tracking(3)
                .foregroundStyle(.cyan)

            Text(title)
                .font(.title2.weight(.bold))
                .foregroundStyle(.white)
        }
    }
}

struct SongRowView: View {
    let number: String
    let title: String
    let year: String
    let color: Color

    var body: some View {
        HStack(spacing: 14) {
            Text(number)
                .font(.caption.monospacedDigit().weight(.bold))
                .foregroundStyle(color)
                .frame(width: 28)

            Image(systemName: "music.note")
                .font(.body.weight(.semibold))
                .foregroundStyle(.white)
                .frame(width: 38, height: 38)
                .background(color.opacity(0.22), in: Circle())

            Text(title)
                .font(.body.weight(.semibold))
                .foregroundStyle(.white)

            Spacer()

            Text(year)
                .font(.caption.monospacedDigit())
                .foregroundStyle(.white.opacity(0.5))
        }
        .padding(14)
        .background(.white.opacity(0.055), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
        .accessibilityElement(children: .combine)
    }
}
