import SwiftUI

struct SongLinkView: View {
    let title: String
    let year: String
    let youtubeURL: String
    let color: Color

    var body: some View {
        if let url = URL(string: youtubeURL) {
            Link(destination: url) {
                HStack(spacing: 12) {
                    Image(systemName: "play.circle.fill")
                        .font(.title2)
                        .foregroundStyle(color)

                    Text(title)
                        .foregroundStyle(.primary)

                    Spacer()

                    Text(year)
                        .foregroundStyle(.secondary)

                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, 6)
                .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        SongLinkView(
            title: "Supernova",
            year: "2024",
            youtubeURL: "https://www.youtube.com/watch?v=phuiiNCxRMg",
            color: .orange
        )
        .padding()
    }
    .preferredColorScheme(.dark)
}
