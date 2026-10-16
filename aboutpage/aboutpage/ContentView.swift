import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 28) {
                    HeaderView()
                    AboutView()
                    StoryView()
                    MembersView()
                    MusicView()
                    FooterView()
                }
                .padding(.bottom, 30)
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("AespaHero")
                .resizable()
                .scaledToFill()
                .frame(height: 380)
                .clipped()

            Color.black.opacity(0.35)

            VStack(alignment: .leading, spacing: 6) {
                Text("WELCOME TO")
                    .font(.headline)
                    .foregroundStyle(.cyan)

                Text("aespa")
                    .font(.largeTitle)
                    .bold()

                Text("about page")
                    .font(.subheadline)
            }
            .padding()
        }
        .frame(height: 380)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal)
        .padding(.top)
    }
}

struct AboutView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("ABOUT")
                .font(.title2)
                .bold()
                .foregroundStyle(.purple)

            Text("aespa 是由 Karina、Giselle、Winter 與 Ningning 組成的南韓女子團體，隸屬於 SM Entertainment。她們在 2020 年 11 月 17 日以〈Black Mamba〉正式出道。")
                .font(.body)

            Text("團體將流行音樂、強烈舞蹈與科幻故事結合，在歌曲和音樂錄影帶中呈現獨特的未來感。從〈Next Level〉、〈Drama〉到〈Supernova〉，她們也持續嘗試不同的電子音樂與舞台風格。")
                .font(.body)
                .foregroundStyle(.secondary)

            HStack {
                VStack {
                    Image(systemName: "calendar")
                        .foregroundStyle(.purple)
                    Text("2020")
                        .bold()
                    Text("出道年份")
                        .font(.caption)
                }
                .frame(maxWidth: .infinity)

                VStack {
                    Image(systemName: "person.3.fill")
                        .foregroundStyle(.cyan)
                    Text("4")
                        .bold()
                    Text("成員人數")
                        .font(.caption)
                }
                .frame(maxWidth: .infinity)

                VStack {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.pink)
                    Text("MY")
                        .bold()
                    Text("粉絲名稱")
                        .font(.caption)
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .background(Color.gray.opacity(0.25))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding(.horizontal)
    }
}

struct StoryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "sparkles")
                    .foregroundStyle(.cyan)

                Text("AESPA'S STORY")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.purple)
            }

            Text("團名 aespa 結合了代表「Avatar X Experience」的 æ，以及具有雙面含義的英文單字 aspect。這個名字表達了「遇見另一個自我，並體驗全新世界」的概念。")

            Text("在 aespa 的世界觀中，四位成員各自擁有一位虛擬分身 ae-aespa。現實世界的成員會透過 SYNK 與分身連結，歌曲則像故事章節一樣，描寫她們在真實與虛擬世界之間的冒險。")
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
    }
}

struct MembersView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("MEMBERS")
                .font(.title2)
                .bold()
                .foregroundStyle(.purple)

            MemberCardView(
                name: "KARINA",
                role: "Leader · Rap · Dance",
                description: "以俐落的舞蹈、穩定的舞台表現與領導魅力，帶領團體展現充滿力量的風格。",
                imageName: "KarinaArt",
                color: .purple
            )

            MemberCardView(
                name: "GISELLE",
                role: "Rap · Vocal",
                description: "擅長饒舌與歌唱，也能使用多種語言，為 aespa 的歌曲帶來鮮明又自在的節奏感。",
                imageName: "GiselleArt",
                color: .blue
            )

            MemberCardView(
                name: "WINTER",
                role: "Vocal · Dance",
                description: "擁有清亮有力的歌聲與精準舞蹈，無論抒情歌曲或強烈舞台都能展現不同魅力。",
                imageName: "WinterArt",
                color: .cyan
            )

            MemberCardView(
                name: "NINGNING",
                role: "Main Vocal",
                description: "以具有爆發力和情感的歌聲受到矚目，高音與現場演唱是團體音樂的重要特色。",
                imageName: "NingningArt",
                color: .pink
            )
        }
        .padding(.horizontal)
    }
}

struct MusicView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("POPULAR SONGS")
                .font(.title2)
                .bold()
                .foregroundStyle(.purple)

            Text("aespa 的作品融合電子音樂、嘻哈與流行元素。早期歌曲也延續團體的虛擬世界故事，而後來的作品則展現更多自信、力量與個人風格。")
                .font(.body)
                .foregroundStyle(.secondary)

            Text("點擊歌曲即可前往 YouTube 觀看官方音樂錄影帶。")
                .font(.caption)
                .foregroundStyle(.cyan)

            SongLinkView(
                title: "Black Mamba",
                year: "2020",
                youtubeURL: "https://www.youtube.com/watch?v=ZeerrnuLi5E",
                color: .purple
            )

            Divider()

            SongLinkView(
                title: "Next Level",
                year: "2021",
                youtubeURL: "https://www.youtube.com/watch?v=4TWR90KJl84",
                color: .cyan
            )

            Divider()

            SongLinkView(
                title: "Drama",
                year: "2023",
                youtubeURL: "https://www.youtube.com/watch?v=D8VEhcPeSlc",
                color: .pink
            )

            Divider()

            SongLinkView(
                title: "Supernova",
                year: "2024",
                youtubeURL: "https://www.youtube.com/watch?v=phuiiNCxRMg",
                color: .orange
            )
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
    }
}

struct FooterView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "diamond.fill")
                .foregroundStyle(.purple)
            Text("Armageddon — the only one")
                .font(.footnote)
            Spacer()
        }
        .foregroundStyle(.secondary)
    }
}

#Preview {
    ContentView()
}
