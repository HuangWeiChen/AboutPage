import SwiftUI

struct MemberCardView: View {
    let name: String
    let koreanName: String
    let role: String
    let description: String
    let imageName: String
    let accentColor: Color

    var body: some View {
        HStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 116, height: 146)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .overlay {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(accentColor.opacity(0.8), lineWidth: 1)
                }
                .shadow(color: accentColor.opacity(0.35), radius: 12)
                .accessibilityHidden(true)

            VStack(alignment: .leading, spacing: 7) {
                HStack(alignment: .firstTextBaseline, spacing: 7) {
                    Text(name)
                        .font(.title3.weight(.bold))
                        .foregroundStyle(.white)

                    Text(koreanName)
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.55))
                }

                Text(role.uppercased())
                    .font(.caption2.weight(.bold))
                    .tracking(1.1)
                    .foregroundStyle(accentColor)

                Text(description)
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.7))
                    .lineSpacing(3)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Spacer(minLength: 0)
        }
        .padding(14)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 26, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 26, style: .continuous)
                .stroke(accentColor.opacity(0.25), lineWidth: 1)
        }
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        MemberCardView(
            name: "KARINA",
            koreanName: "카리나",
            role: "Leader · Rap · Dance",
            description: "以俐落舞台魅力與穩定領導力，展現強烈的核心氣場。",
            imageName: "KarinaArt",
            accentColor: .purple
        )
        .padding()
    }
}
