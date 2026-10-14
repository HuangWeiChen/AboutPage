import SwiftUI

struct ContentView: View {
    private let members = [
        MemberProfile(
            name: "KARINA",
            koreanName: "카리나",
            role: "Leader · Rap · Dance",
            description: "以俐落舞台魅力與穩定領導力，展現 aespa 強烈的核心氣場。",
            imageName: "KarinaArt",
            accentColor: Color(red: 0.88, green: 0.24, blue: 0.95)
        ),
        MemberProfile(
            name: "GISELLE",
            koreanName: "지젤",
            role: "Rap · Vocal",
            description: "自在切換多種語言與節奏，以獨特音色為歌曲增添鮮明層次。",
            imageName: "GiselleArt",
            accentColor: Color(red: 0.18, green: 0.72, blue: 1.0)
        ),
        MemberProfile(
            name: "WINTER",
            koreanName: "윈터",
            role: "Vocal · Dance",
            description: "清亮有力的歌聲搭配精準舞蹈，舞台風格如冰晶般耀眼。",
            imageName: "WinterArt",
            accentColor: Color(red: 0.68, green: 0.80, blue: 1.0)
        ),
        MemberProfile(
            name: "NINGNING",
            koreanName: "닝닝",
            role: "Main Vocal",
            description: "充滿爆發力與情感的主唱，為 aespa 的音樂注入明亮能量。",
            imageName: "NingningArt",
            accentColor: Color(red: 1.0, green: 0.46, blue: 0.58)
        )
    ]

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.02, green: 0.02, blue: 0.08),
                    Color(red: 0.12, green: 0.04, blue: 0.22),
                    Color.black
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 28) {
                    heroSection
                    introductionSection
                    memberSection
                    musicSection
                    footerSection
                }
                .padding(.bottom, 32)
            }
            .scrollIndicators(.hidden)
        }
        .preferredColorScheme(.dark)
    }

    private var heroSection: some View {
        ZStack(alignment: .bottomLeading) {
            Image("AespaHero")
                .resizable()
                .scaledToFill()
                .frame(height: 500)
                .clipped()

            LinearGradient(
                colors: [.clear, Color.black.opacity(0.18), Color.black.opacity(0.96)],
                startPoint: .top,
                endPoint: .bottom
            )

            VStack(alignment: .leading, spacing: 8) {
                Text("WELCOME TO")
                    .font(.caption.weight(.semibold))
                    .tracking(4)
                    .foregroundStyle(Color.cyan)

                Text("aespa")
                    .font(.system(size: 62, weight: .black, design: .rounded))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.white, Color(red: 0.76, green: 0.56, blue: 1.0)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .shadow(color: .purple.opacity(0.9), radius: 16)

                Text("BE MY Æ · SYNK, DIVE")
                    .font(.subheadline.weight(.medium))
                    .tracking(1.5)
                    .foregroundStyle(.white.opacity(0.82))
            }
            .padding(24)
        }
        .frame(height: 500)
        .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 32, style: .continuous)
                .stroke(
                    LinearGradient(colors: [.purple, .cyan.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing),
                    lineWidth: 1
                )
        }
        .shadow(color: .purple.opacity(0.35), radius: 24, y: 12)
        .padding(.horizontal, 16)
        .padding(.top, 12)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("aespa，四人女子音樂團體")
    }

    private var introductionSection: some View {
        VStack(alignment: .leading, spacing: 18) {
            SectionTitleView(eyebrow: "ABOUT", title: "跨越現實與虛擬")

            Text("aespa 是由 Karina、Giselle、Winter 與 Ningning 組成的南韓女子團體。她們以充滿未來感的世界觀、強烈舞台表現和多元曲風，創造出獨一無二的音樂色彩。")
                .font(.body)
                .foregroundStyle(.white.opacity(0.78))
                .lineSpacing(7)

            HStack(spacing: 10) {
                HighlightCardView(value: "2020", label: "出道年份", systemImage: "sparkles", accentColor: .purple)
                HighlightCardView(value: "4", label: "成員人數", systemImage: "person.3.fill", accentColor: .cyan)
                HighlightCardView(value: "MY", label: "粉絲名稱", systemImage: "heart.fill", accentColor: .pink)
            }
        }
        .padding(.horizontal, 20)
    }

    private var memberSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionTitleView(eyebrow: "MEMBERS", title: "四種閃耀色彩")

            ForEach(members) { member in
                MemberCardView(
                    name: member.name,
                    koreanName: member.koreanName,
                    role: member.role,
                    description: member.description,
                    imageName: member.imageName,
                    accentColor: member.accentColor
                )
            }
        }
        .padding(.horizontal, 20)
    }

    private var musicSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionTitleView(eyebrow: "PLAYLIST", title: "代表作品")

            SongRowView(number: "01", title: "Black Mamba", year: "2020", color: .purple)
            SongRowView(number: "02", title: "Next Level", year: "2021", color: .cyan)
            SongRowView(number: "03", title: "Drama", year: "2023", color: .pink)
            SongRowView(number: "04", title: "Supernova", year: "2024", color: .orange)
        }
        .padding(.horizontal, 20)
    }

    private var footerSection: some View {
        VStack(spacing: 8) {
            Image(systemName: "diamond.fill")
                .font(.title2)
                .foregroundStyle(.purple)
                .shadow(color: .purple, radius: 8)

            Text("Armageddon — the only one")
                .font(.footnote.weight(.medium))
                .foregroundStyle(.white.opacity(0.6))
        }
        .padding(.top, 8)
    }
}

#Preview {
    ContentView()
}

private struct MemberProfile: Identifiable {
    let name: String
    let koreanName: String
    let role: String
    let description: String
    let imageName: String
    let accentColor: Color

    var id: String { name }
}
