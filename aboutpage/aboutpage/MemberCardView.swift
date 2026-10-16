import SwiftUI

struct MemberCardView: View {
    let name: String
    let role: String
    let description: String
    let imageName: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 220)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 12))

            HStack {
                Text(name)
                    .font(.title3)
                    .bold()

                Spacer()

                Text(role)
                    .font(.subheadline)
                    .foregroundStyle(color)
            }

            Text(description)
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        MemberCardView(
            name: "KARINA",
            role: "Leader · Rap · Dance",
            description: "以俐落的舞蹈、穩定的舞台表現與領導魅力，帶領團體展現充滿力量的風格。",
            imageName: "KarinaArt",
            color: .purple
        )
        .padding()
    }
    .preferredColorScheme(.dark)
}
